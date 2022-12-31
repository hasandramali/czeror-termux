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
megadl "https://mega.nz/file/wfAVzQzY#dEVf9f3QEzCDgw68LwXgMEhh8QCt8iwLcd8JIGUnlr0"
tar -xf czeror-termux.tar
rm czeror-termux.tar
chmod +x Ubuntu-i386.sh
./Ubuntu-i386.sh
clear
if [ ! -d "/data/data/com.termux/files/home/storage/shared/xash" ]; then
echo -e "\e[1;31m ERROR:\e[0m Please Copy xashds/czeror folder to your xash folder."
else
cp -r xashds/czeror ~/storage/shared/xash/
fi

mv xashds ubuntu-fs/root/
echo -e "\033[0;36m Type ./start-ubuntu.sh\033[0m"