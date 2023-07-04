# -*- coding: utf-8 -*-

#
# Read a cartridge via the P2000T Cartridge Reader Board and store it
# as a 'rom.bin' file.
#

import serial

def main():
    # auto-find port
    port = find_port()
    assert(port)

    # specify the COM port below
    ser = serial.Serial(port, 
                        115200, 
                        bytesize=serial.EIGHTBITS,
                        parity=serial.PARITY_NONE,
                        stopbits=serial.STOPBITS_ONE,
                        timeout=1.5)  # open serial port
    
    if not ser.isOpen():
        ser.open()
    
    # check that the correct board is attached
    ser.write(b'READINFO')
    rsp = ser.read(8)
    rsp = ser.read(16)
    print(rsp)
    
    # read 16 kb from cartridge
    data = bytearray()
    for i in range(0,4):
        ser.write(b'RB%06X' % (i*4096))
        print('Reading bank %i' % i)
        rsp = ser.read(8)
        rsp = ser.read(0x1000)
        data.extend(rsp)
    ser.close()
    
    print()
    print('First 256 bytes read:')
    for j in range(0,16):
        for i in range(0, 16):
            print('%02X ' % data[j*16+i], end='')
        print()
    
    # store in file
    f = open('rom.bin', 'wb')
    f.write(data)
    f.close()
    
def find_port():
    """
    Find the correct port by looping over all ports and looking for one
    that has an hardware id matching an Arduino Leonardo
    """
    ports = serial.tools.list_ports.comports()
    for port,desc,hwid in ports:
        if hwid.split()[1].split('=')[1] == '2341:8036':
            return port
    
    return False

if __name__ == '__main__':
    main()