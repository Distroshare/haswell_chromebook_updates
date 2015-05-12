#!/bin/bash
# File: "/etc/pm/sleep.d/99wifi".

case $1/$2 in
    pre/*)
	/sbin/rmmod ath9k
	;;
    post/*)
	/sbin/modprobe ath9k
	;;
esac
exit 0
