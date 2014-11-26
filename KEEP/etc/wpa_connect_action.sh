#!/bin/sh
if="$1"
state="$2"
echo "$0: $if $state"
case "$state" in
CONNECTED)
dhclient "$if" || dhclient "$if";
;;
DISCONNECTED)
ifconfig "$if" down;
;;
esac
