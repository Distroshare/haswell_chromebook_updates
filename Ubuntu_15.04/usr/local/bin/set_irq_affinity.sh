#!/bin/bash

for i in `ls -1 /proc/irq/`
do
  if [ $i == "default_smp_affinity" ]
  then
    continue
  fi

  echo 1 > /proc/irq/$i/smp_affinity > /dev/null 2>&1
done
echo 2 > /proc/irq/37/smp_affinity
echo 2 > /proc/irq/default_smp_affinity
