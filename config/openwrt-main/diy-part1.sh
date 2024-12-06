#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/openwrt/openwrt / Branch: main
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/utils/{ucode,fbtest}
echo >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
echo >> feeds.conf.default
echo 'src-git third_party https://github.com/linkease/istore-packages.git;main' >> feeds.conf.default
echo >> feeds.conf.default
echo 'src-git diskman https://github.com/jjm2473/luci-app-diskman.git;dev' >> feeds.conf.default
echo >> feeds.conf.default
echo 'src-git oaf https://github.com/jjm2473/OpenAppFilter.git;dev4' >> feeds.conf.default
echo >> feeds.conf.default
echo 'src-git linkease_nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo >> feeds.conf.default
echo 'src-git linkease_nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
echo >> feeds.conf.default
echo 'src-git jjm2473_apps https://github.com/jjm2473/openwrt-apps.git;main' >> feeds.conf.default
