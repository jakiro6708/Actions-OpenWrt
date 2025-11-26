#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# sed -i 's/dnsmasq/dnsmasq-full luci/g' include/target.mk
# netdata passwall helloworld

cp -rf ../megatron package/megatron
cp -rf ../passwall package/megatron/passwall
# rm -rf feeds/luci/applications/luci-app-aria2
# rm -rf feeds/luci/applications/luci-app-dockerman
# rm -rf feeds/packages/net/aria2
# cp -rf ../luci-app-aria2 feeds/luci/applications/luci-app-aria2
# cp -rf ../luci-app-dockerman feeds/luci/applications/luci-app-dockerman
# cp -rf ../aria2 feeds/packages/net/aria2
# cp ../luciMenu.py luciMenu.py
# chmod +x luciMenu.py
# python3 luciMenu.py
# rm -rf luciMenu.py

# sed -i 's/dnsmasq/dnsmasq-full luci/g' include/target.mk
# netdata passwall helloworld

# sed -i 's/dnsmasq/dnsmasq-full blockd libopenssl-legacy libopenssl-conf zerotier kmod-fs-cifs kmod-nls-utf8 luci luci-app-argon-config luci-app-aria2 luci-app-vlmcsd/g' include/target.mk
sed -i 's/dnsmasq/dnsmasq-full blockd iperf3 libopenssl-legacy libopenssl-conf zerotier kmod-fs-cifs kmod-nls-utf8 luci luci-app-argon-config luci-app-aria2 luci-app-vlmcsd luci-app-wol/g' include/target.mk

# sed -i 's/dnsmasq/dnsmasq blockd libopenssl-legacy libopenssl-conf netdata zerotier kmod-fs-cifs kmod-nls-utf8 luci luci-app-argon-config luci-app-aria2 luci-app-vlmcsd/g' include/target.mk


# 带USB的路由器
sed -i 's/ppp-mod-pppoe/ppp-mod-pppoe vsftpd kmod-fs-exfat kmod-fs-ext4 kmod-fs-vfat kmod-usb-storage kmod-usb2 kmod-usb3 luci-app-hd-idle luci-app-samba4/g' include/target.mk

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/admin\/services\/wol/admin\/wol/g' feeds/luci/applications/luci-app-wol/root/usr/share/luci/menu.d/luci-app-wol.json

# applications/luci-app-wol/root/usr/share/luci/menu.d/luci-app-wol.json
# sed -i '/\"title\": \"kms server\"/a\\		\"order\": 100,' feeds/luci/applications/luci-app-wol/root/usr/share/luci/menu.d/luci-app-wol.json



# cat feeds/luci/modules/luci-base/root/usr/share/luci/menu.d/luci-base.json
# cat feeds/luci/applications/luci-app-wol/root/usr/share/luci/menu.d/luci-app-wol.json
# cat feeds/luci/applications/luci-app-dockerman/Makefile
# ls feeds/luci/applications/luci-app-aria2
# ls feeds/packages/net/aria2


# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
