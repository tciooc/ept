#!/bin/bash
echo "即将安装ept 0.0.1-alpha版本"
curl https://trial-cdn.esign.cn/upload/b4411f5e-1e20-5e1f-bf6f-f0316ba2e059!!10-13.zip --output ept-bin.zip
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
echo "初始化模版数据"
ept config set template.project https://trial-cdn.esign.cn/upload/46582824-9022-5d85-bf28-8526c7ee15ca!!10-13.zip
echo "安装完成"
echo "请执行ept -h查看如何使用"
