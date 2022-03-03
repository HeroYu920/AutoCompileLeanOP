#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

#Modify default gateway and netmask address
#sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
#sed -i 's/255.255.255.0/255.255.240.0/g' package/base-files/files/bin/config_generate

#For Zoom's R7800
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Add a feed source for lean openwrt
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
