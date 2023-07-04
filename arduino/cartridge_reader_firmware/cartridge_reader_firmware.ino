/*
 * Note that there is an error in the Field Support Manual
 * 
 * CARSEL1 is on PIN 13A and CARSEL2 on PIN 12B; this is presented
 * reversed (incorrectly) in the FSM. See also:
 * https://www.philips-p2000t.nl/cartridges/basic-cartridge
 * 
 * Please note that this script only works for the P2000 Cartridge Reader
 * Boards __REV1__ and higher.
 */

#define ADDR_A12 8
#define ADDR_CARSEL1 2
#define ADDR_CARSEL2 3
#define CCLK 9
#define CRES 10

int lines[8] = {A0,A1,A2,A3,4,5,6,7};

// board identifier; this string needs to be 16 bytes long and terminated by a null character
char board_id[17] = {'P','2','k','0','_','V','1','.','0','.','0','_','_','_','_','_','\0'};

// global variables
char instruction[9];    // stores single 8-byte instruction
uint8_t inptr = 0;      // instruction pointer


void setup() {
  Serial.begin(115200);

  // set output on some pins
  pinMode(ADDR_A12, OUTPUT);
  pinMode(ADDR_CARSEL1, OUTPUT);
  pinMode(ADDR_CARSEL2, OUTPUT);
  pinMode(CCLK, OUTPUT);
  pinMode(CRES, OUTPUT);

  for(int i=0; i<8; i++) {
    pinMode(lines[i], INPUT);
  }

  // disable reset
  digitalWrite(CRES, LOW);
  digitalWrite(CCLK, HIGH);
}

uint8_t read_byte() {
  uint8_t val = 0;
  for(uint8_t i=0; i<8; i++) {
    val |= digitalRead(lines[i]) << i;
  }
  return val;
}

void set_address_start(uint16_t addr) {
  // reset counter
  digitalWrite(CRES, HIGH);
  digitalWrite(CRES, LOW);

  // read cartridge address
  bool a12 = bitRead(addr, 12);
  bool a13 = bitRead(addr, 13);
  uint8_t idx = a12 | (a13 << 1);

  // calculate load on cartridge lines
  static const bool a12p[4] = {HIGH,LOW,HIGH,LOW};
  static const bool cs1[4] = {LOW,LOW,HIGH,HIGH};
  static const bool cs2[4] = {HIGH,HIGH,LOW,LOW};

  // write to cartridge
  digitalWrite(ADDR_A12, a12p[idx]);
  digitalWrite(ADDR_CARSEL1, cs1[idx]);
  digitalWrite(ADDR_CARSEL2, cs2[idx]);
}

/*
 * Read block of 4096 bytes and output this
 * to the serial interface
 */
static void read_sector(uint16_t startaddress) {
  set_address_start(startaddress);
  for(int i=0; i<4096; i++) {
    Serial.write(read_byte());
    digitalWrite(CCLK, LOW);
    digitalWrite(CCLK, HIGH);
  }
}

/*
 * Capture address from last 6 bytes
 * of a command word
 */
static uint16_t get_addr_cmdword(const char* command) {
  char adrstr[7] = {'\0','\0','\0','\0','\0','\0','\0',};
  for(int i=0; i<6; i++) {
    adrstr[i] = command[i+2];
  }
  uint16_t saddr = strtoul(adrstr, NULL, 16);
  return saddr;
}

void loop() {
  if (Serial.available() > 0) {
    char c = Serial.read();

    // only capture alphanumerical data
    if((c >= 48 && c <= 57) || (c >= 65 && 90)) {
      instruction[inptr] = c;
      inptr++;
    }
  }

  // parse instruction
  if(inptr == 8) {
    // reset pointer
    inptr = 0;

    // interpret commands
    if(strcmp(instruction, "READINFO") == 0) {                    // read board id
      Serial.print(instruction);
      Serial.print(board_id);
    } else if(instruction[0] == 'R' && instruction[1] == 'B') {   // read sector
      Serial.print(instruction);
      uint16_t saddr = get_addr_cmdword(instruction);
      read_sector(saddr);
    }
  }
}
