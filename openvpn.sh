#!/bin/bash
#
# This small script brings up VPN using openvpn
# This is tested using OpenConnect version v8.20-1 in Ubuntu 22.04
# Other version might differ
# Make sure to add a line at the end of .bashrc
# source /{location}/vpn.sh
# start: vpn-up then hit enter. Enter  
# stop: vpn-down

export VPN_HOST=""
export VPN_GROUP=""
export VPN_USER=""
export VPN_SERVER_CRT=""

function vpn-up() {
  echo "Bringing VPN up"
  sudo openconnect --protocol=anyconnect --background --user=$VPN_USER --authgroup=$VPN_GROUP --servercert $VPN_SERVER_CRT --passwd-on-stdin --key-password-from-fsid $VPN_HOST
}

function vpn-down() {
  echo "Bringing VPN down"
  sudo kill -2 `pgrep openconnect`
}
