#!/bin/bash

if [ ! -d "storage" ]; then
termux-setup-storage
else
echo "storage ztn var"
fi

pkg install wget proot megatools -y
if [ ! -d "storage" ]; then
exit
else
echo "continues"
fi
megadl "https://mega.nz/file/wb5DmYxZ#T0q1BdePVDLvS1dhVIuuUobMCx1XXffHrvLuBbt2l7g"
tar -xf czeror-termux.tar
rm czeror-termux.tar
chmod +x Ubuntu-i386.sh
./Ubuntu-i386.sh
clear
if [ ! -d "/data/data/com.termux/files/home/storage/shared/xash" ]; then
echo -e "\e[1;31m ERROR:\e[0m Please Copy xashds/czeror folder to your xash directory."
else
cp -r czeror-termux/xashds/czeror ~/storage/shared/xash/
fi

mv czeror-termux/xashds ubuntu-fs/root/
echo -e "\033[0;36m Type ./start-ubuntu.sh\033[0m"
