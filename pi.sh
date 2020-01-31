#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i '3a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#./scripts/feeds update -a && ./scripts/feeds install -a

echo '下载新的主题lignt and night'
git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/luci-theme-Light
git clone https://github.com/Aslin-Ameng/luci-theme-Night.git package/luci-theme-Night
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-leo.git package/luci-theme-leo

echo '下载passwall'
git clone https://github.com/Lienol/openwrt-package.git package/openwrt-package

