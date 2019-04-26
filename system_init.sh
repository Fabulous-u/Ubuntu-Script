#!/bin/sh
echo '####################'
echo 'remove some software'
sudo apt-get remove \
unity-webapps-common \
thunderbird \
totem \
rhythmbox \ 
brasero \ 
simple-scan \ 
aisleriot \
gnome-mines \ 
transmission-common \
gnome-orc \
webbrowser-app \
gnome-sudoku \
libreoffice-common \
firefox \
liberoffice* 
echo '###################'
echo 'update the source'
sudo echo '
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiversea' > /etc/apt/source.list
sudo apt-get update
echo '###################'
echo 'upgrade system'
sudo apt-get upgrade -y
echo '###################'
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get install vim unity-tweak-tool flashplugin-installer flatabulous-theme language-pack-zh-hans fcitx-googlepinyin git zsh unrar ntpdate vlc docker -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome* 
sudo rm -rf google-chrome*
wget http://d1.music.126.net/dmusic/netease-cloud-music_1.2.0_amd64_ubuntu_20190424_1.deb
sudo dpkg -i netease-cloud-music* 
sudo rm -rf netease-cloud-music* 
wget https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/8392/wps-office_11.1.0.8392_amd64.deb
sudo dpkg -i wps-office* 
sudo rm -rf wps-office*
git config --global user.name "1"
git config --global user.email "email."
echo '###################'

