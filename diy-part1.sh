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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git lucipasswall -b luci https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git OpenClash https://github.com/vernesong/OpenClash' >>feeds.conf.default
# echo 'src-git vssr https://github.com/jerrykuku/luci-app-vssr' >>feeds.conf.default




# git clone https://github.com/xiaorouji/openwrt-passwall.git package/lienol
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2
git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns package/openwrt-smartdns     
# git clone https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns package/luci-app-tencentddns 
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome 
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome