# Micropython on ESP32

Firmware

https://micropython.org/download#esp32

Software

sudo apt install python-pip
sudo pip install --upgrade pip
sudo pip install esptool --upgrade
sudo pip install adafruit-ampy --upgrade

Flash

esptool --port /dev/ttyUSB0 erase_flash
esptool --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 firmware.bin

Program

ampy --port /dev/ttyUSB0 run blink.py

Source

https://www.cnx-software.com/2017/10/16/esp32-micropython-tutorials/
