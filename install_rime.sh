#!/bin/bash

echo "（正在安装ibus-rime程序包，请授予sudo权限）"
sudo apt install ibus-rime
sudo apt install librime-data-double-pinyin

command -v git >/dev/null 2>&1 ||
{ echo >&2 "系统未安装git，即将安装";
  sudo apt install git
}

mkdir -p ~/.config/ibus/rime/
cd ~/.config/ibus/rime/
git clone https://github.com/MapleWithered/ubuntu-flypy.git
mv ubuntu-flypy/** .
rm -rf ./ubuntu-flypy

echo "数据文件已经安装，请重启电脑，重启后在 系统设置-区域与语言 中添加Rime输入法"
