#!/bin/bash

if [ ! -d "storage" ]; then
termux-setup-storage
else
echo "storage ztn var"
fi

apt install wget proot megatools -y
if [ ! -d "storage" ]; then
exit
else
echo "continues"
fi
megadl "https://mega.nz/file/dbhFCJyJ#YSvsDtP1Vcd2eDYU3iGxrYssTBNFoKnGKs6y0vsQ9xg"
tar -xf czeror-termux.tar
rm czeror-termux.tar
chmod +x czeror-termux/Ubuntu-i386.sh
bash czeror-termux/Ubuntu-i386.sh
clear
if [ ! -d "/data/data/com.termux/files/home/storage/shared/xash" ]; then
else
cp -r czeror-termux/xashds/czeror ~/storage/shared/xash/
fi

if [ ! -d "/data/data/com.termux/files/home/storage/shared/.xash" ]; then
echo -e "\e[1;31m ERROR:\e[0m Please Copy xashds/czeror folder to your xash directory."
else
cp -r czeror-termux/xashds/czeror ~/storage/shared/.xash/
fi

mv czeror-termux/xashds ubuntu-fs/root/
echo -e "\033[0;36m Type ./newgame.sh to start new game\033[0m"
rm -rf czeror-termux
chmod +x ubuntu-fs/root/xashds/newgame.sh
chmod +x ubuntu-fs/root/xashds/loadgame.sh
chmod +x ubuntu-fs/root/xashds/xash3d
chmod +x newgame.sh
