#!/bin/bash

exec 2> /tmp/setup.log

cd /home/ymg/drivers/RaspberryPiMouse/src/drivers
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /deb/rt*

echo 0 > /dev/rtmotoren0
