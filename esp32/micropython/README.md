# Micropython on ESP32

Flash the ESP32 devboard with Micropython, these steps are for Linux.

## Firmware

https://micropython.org/download#esp32

## Software

```
sudo apt install python-pip
sudo pip install --upgrade pip
sudo pip install esptool --upgrade
sudo pip install adafruit-ampy --upgrade
```

## Flash

Erease the flash 

`esptool --port /dev/ttyUSB0 erase_flash`

Write the new firmware

`esptool --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 firmware.bin`

## Program device

Use ampy to program the device. Type the following to run the program. 

`ampy --port /dev/ttyUSB0 run blink.py`

If you want the program to run on boot rename it to *main.py*

`ampy --port /dev/ttyUSB0 put main.py`

### List programs

Reconnect to the serial console and type the following:

```
import os
os.listdir()
```

### Run programs

`import blink.py`

### Remove programs

`ampy --port /dev/ttyUSB0 rm blink.py

# Notes

For generic online docs please visit http://docs.micropython.org/ 

## Modules

List available modules type: help('modules')

For access to the hardware use the 'machine' module: 

```
import machine 
pin12 = machine.Pin(12, machine.Pin.OUT) 
pin12.value(1) 
pin13 = machine.Pin(13, machine.Pin.IN, machine.Pin.PULL_UP) 
print(pin13.value()) 
i2c = machine.I2C(scl=machine.Pin(21), sda=machine.Pin(22)) 
i2c.scan() 
i2c.writeto(addr, b'1234') 
i2c.readfrom(addr, 4) 
``` 

## Control commands 

```
 CTRL-A -- on a blank line, enter raw REPL mode 
 CTRL-B -- on a blank line, enter normal REPL mode 
 CTRL-C -- interrupt a running program 
 CTRL-D -- on a blank line, do a soft reset of the board 
 CTRL-E -- on a blank line, enter paste mode 
```
## Basic WiFi configuration: 
 
```
import network 
sta_if = network.WLAN(network.STA_IF); sta_if.active(True) 
sta_if.scan() # Scan for available access points 
sta_if.connect("<AP_name>", "<password>") # Connect to an AP 
sta_if.isconnected() # Check for successful connection 
```

For further help on a specific object, type `help(obj)`

For a list of available modules, type `help('modules')`

## Source

https://github.com/micropython/micropython-esp32

https://www.cnx-software.com/2017/10/16/esp32-micropython-tutorials/


