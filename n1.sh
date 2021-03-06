#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
sed -i '3a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a
