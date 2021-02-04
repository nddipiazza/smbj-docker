#!/bin/bash
set -e

: "${SMB_USER:=smbuser}"
: "${SMB_PASSWORD:=smbpassword}"
#
#for netdev in /sys/class/net/*; do
#  netdev=${netdev##*/}
#  if [[ "$netdev" != "lo" ]]; then
#    break
#  fi
#done
#subnet=$(ip addr show "$netdev" | sed -n 's/.*inet \([0-9\.]*\/[0-9]*\) .*/\1/p')
#ip_address=${subnet%%/*}

ip_address="127.0.0.1"

# Create DFS links
# - /public -> public share
# - /user -> user share
# - /firstfail-public -> first listed server fails, second -> public share

exec "$@"
