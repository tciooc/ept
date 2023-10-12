#!/bin/bash
echo "即将安装ept 0.0.1-alpha版本"
curl https://trial-cdn.esign.cn/upload/4522d0e6-2694-5d83-b5e8-55fd4c628beb\!\!10-12.zip --output ept-bin.zip
unzip ept-bin.zip
system=`uname`
if [ "$system" == "Darwin" ]; then
  echo "安装Mac版本EPT程序"
  cp -f ept/mac/ept /usr/local/bin
else
  echo "安装Linux版本EPT程序"
  cp -f ept/linux/ept /usr/local/bin
fi
chmod +x /usr/local/bin/ept
rm -rf __MACOSX ept ept-bin.zip
echo "安装完成"
echo "请执行ept -h查看如何使用"
