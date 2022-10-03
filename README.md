# openvpn-utils
This small bash script makes it easier to bring up and down VPN using openvpn.
This is tested using OpenConnect version v8.20-1 in Ubuntu 22.04. Other version might differ.


After cloning this repo, fill up neccessary details such as VPN_HOST, VPN_USER, VPN_GROUP and VPN_SERVER_CRT

VPN_SERVER_CRT can be obtained by running: "openconnect $VPN_HOST", the server cert will be displayed, should be smth like "pin-shaxxx:xxxx"

Add a line at the end of your .bashrc or .bash_profile

source _LOCATION_OF_openvpn.sh_


# Start

`vpn-up`

This requires sudo to run, enter sudo password. Then hit enter, when it prompts password, hit enter one more time, then type in password and MFA code.

# Stop
`vpn-down`
