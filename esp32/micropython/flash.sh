#!/bin/bash

FIRMWARE="esp32-20180423-v1.9.3-558-ga60efa82.bin"
PORT="ttyUSB0"

esptool.py --port /dev/$PORT erase_flash
esptool.py --chip esp32 --port /dev/$PORT write_flash -z 0x1000 $FIRMWARE
