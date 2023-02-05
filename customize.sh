#!/bin/bash

# Modify default LAN IP
sed -i 's/192.168.1.1/192.168.88.1/g' ./package/base-files/files/bin/config_generate

# Enable fullcone NAT
sed -i '6i \\toption fullcone\t1' ./package/network/config/firewall/files/firewall.config
