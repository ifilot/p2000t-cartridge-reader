# -*- coding: utf-8 -*-

import unittest
import serial
import serial.tools.list_ports

#
# Test that the cartridge interface is working
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
        
        ser.write(b'READINFO')
        rsp = ser.read(8)
        rsp = ser.read(16)
        self.assertTrue(rsp == b'P2k0_V1.0.0_____')
        ser.close()

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

if __name__ == '__main__':
    unittest.main()