#!/bin/bash

# Modify default LAN IP
sed -i 's/192.168.1.1/192.168.88.1/g' ./package/base-files/files/bin/config_generate

# Enable fullcone NAT
sed -i '/option forward\t\tREJECT.*/a\\toption fullcone\t\t1' ./package/network/config/firewall/files/firewall.config

# Change default timezone to Asia/Shanghai
sed -i "s/timezone='.*'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/.*ttylogin='0'.*/i\\\t\tset system.@system[-1].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate
