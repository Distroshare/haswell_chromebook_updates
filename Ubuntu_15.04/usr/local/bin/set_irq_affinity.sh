#!/bin/bash

#Set the cpu affinity of most irqs to cpu 1
IRQS_ON_CPU1="1 3 4 5 6 7 8 9 10 11 12 13 14 15 21 37 40"
for i in $IRQS_ON_CPU1
do
  echo 1 > /proc/irq/$i/smp_affinity 
done

#Set a selection of hand picked irqs to cpu2
IRQS_ON_CPU2="16 41 42 43 44 45"
for i in $IRQS_ON_CPU2
do
   echo 2 > /proc/irq/$i/smp_affinity
done

#Set the default affinity to cpu 2
echo 2 > /proc/irq/default_smp_affinity
