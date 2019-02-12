# @autor : Gabriel Castro
#!/bin/bash

mkdir temp
cd temp
echo "###################### INSTALL TERMINATOR ###############################"

sudo apt-get update
sudo apt-get install terminator

echo "###################### INSTALL SUBLIME TEXT ###############################"

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo "###################### INSTALL VLC MEDIA ###############################"

sudo apt-get update
sudo apt-get install vlc


echo "###################### INSTALL GIT ###############################"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git

echo "###################### INSTALL YOUTUBE-DL ###############################"

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install youtube-dl

echo "###################### INSTALL OPENCV 2.4 ###############################"

sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
sudo mkdir opencv 
cd opencv
git clone https://github.com/opencv/opencv.git
mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
sudo make install

echo "###################### INSTALL DOXYGEN ###############################"

sudo apt-get install doxygen

echo "###################### INSTALL LATEX ###############################"

sudo apt-get install texlive-full
sudo apt-get install texmaker


echo "###################### INSTALL LTspice ###############################"

sudo apt-get install wine
cd /tmp/
wget http://ltspice.linear-tech.com/software/LTspiceIV.exe
wine LTspiceIV.exe
rm LTspiceIV.exe


echo "###################### INSTALL INKSCAPE ###############################"

sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

echo "###################### INSTALL GIMP ###############################"

sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
sudo apt update && sudo apt install gimp gimp-gmic
sudo apt install ppa-purge && sudo ppa-purge ppa:otto-kesselgulasch/gimp-edge


echo "###################### INSTALL SPOTIFY ###############################"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

echo "###################### INSTALL VS CODE ###############################"

mkdir vscode
cd vscode
wget https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i *_amd64.deb
cd ..
rm -r vscode


echo "###################### INSTALL Google Chrome ###############################"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list

cd ..
rm -r temp
