#!/bin/sh

sudo ntpdate ntp.ntsc.ac.cn && sudo hwclock --systohc --utc
