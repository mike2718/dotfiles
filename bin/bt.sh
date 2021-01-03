#!/bin/sh

sudo killall transmission-daemon
transmission-daemon -B -C -T -w /home/mike/Downloads -o -y -m -ep -GSR

