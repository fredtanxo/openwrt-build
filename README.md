# Build Fred's OpenWrt

Based on the official source of [OpenWrt](https://openwrt.org)

## Modifications

* Change default LAN IP address to `192.168.88.1`
* Change default timezone to `Asia/Shanghai`
* Enable fullcone NAT by default
* Add TCP-BBR kernel module
* Resize rootfs partition size to `512MiB`
* Add my commonly used packages
