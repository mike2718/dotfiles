#!/bin/sh

sudo ntpdate cn.pool.ntp.org && sudo hwclock --systohc --utc
