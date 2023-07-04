# -*- coding: utf-8 -*-

import unittest
import serial
import serial.tools.list_ports
import hashlib
import numpy as np

#
# Test that the P2000T Cartridge Reader can read the BASIC cartridge.
#

class TestStringMethods(unittest.TestCase):
    
    def test_serial_interface(self):
        port = self.find_port()
        
        self.assertTrue(port)
        
        ser = serial.Serial(port, 
                            115200, 
                            bytesize=serial.EIGHTBITS,
                            parity=serial.PARITY_NONE,
                            stopbits=serial.STOPBITS_ONE,
                            timeout=1.5)  # open serial port
        
        if not ser.isOpen():
            ser.open()

        original = self.read_rom('original.bin')
        checksum = hashlib.md5(original)
        assert(checksum.hexdigest() == '2191811aa64f8e7f273ce0f462374728')

        # check that the correct board is attached
        ser.write(b'READINFO')
        rsp = ser.read(8)
        rsp = ser.read(16)
        print(rsp)

        # read 16 kb from cartridge
        capture = bytearray()
        for i in range(0,4):
            ser.write(b'RB%06X' % (i*4096))
            print('Reading bank %i' % i)
            rsp = ser.read(8)
            rsp = ser.read(0x1000) 
            capture.extend(rsp)

        ser.close()

        np.testing.assert_equal(capture, original)

    def find_port(self):
        """
        Find the correct port by looping over all ports and looking for one
        that has an hardware id matching an Arduino Leonardo
        """
        ports = serial.tools.list_ports.comports()
        for port,desc,hwid in ports:
            if hwid.split()[1].split('=')[1] == '2341:8036':
                return port
        
        return False
    
    def read_rom(self, filename):
        """
        Read rom file
        """
        f = open(filename, 'rb')
        data = bytearray(f.read())
        data.extend([0x00] * (0x4000 - len(data)))
           
        f.close()
        return data

if __name__ == '__main__':
    unittest.main()