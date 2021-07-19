#!/bin/sh

sudo ntpdate -u 0.cn.pool.ntp.org && sudo hwclock -w
