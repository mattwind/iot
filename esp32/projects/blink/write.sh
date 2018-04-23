#!/bin/bash

cmd=$1

if [ "$cmd" == "" ]; then
  cmd="run"
fi

ampy --port /dev/ttyUSB0 $cmd main.py

