#!/bin/sh

# 计算apt输出信息的base32，再取第一行
apt|base32|head -n 1
