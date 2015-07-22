#!/bin/bash

cgcreate -a root -g memory,cpu:limits
cgclassify -g memory,cpu:limits `pidof X`
echo 2048 > /sys/fs/cgroup/cpu,cpuacct/limits/cpu.shares
