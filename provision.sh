#! /bin/bash

sudo apt-get upgrade
sudo apt-get upgrade -f

sudo apt-get install -y build-essential g++-4.8 git cmake libgmp-dev libboost-all-dev automake unzip libtool libleveldb-dev yasm libminiupnpc-dev libreadline-dev scons libncurses5-dev qtbase5-dev qt5-default qtdeclarative5-dev libqt5webkit5-dev libcurl4-openssl-dev

cd
mkdir -p ~/ws

cd ~/ws/
git clone https://github.com/mmoss/cryptopp.git
cd cryptopp
sudo scons --shared --prefix=/usr
cd ..

cd ~/ws/
git clone git://github.com/cinemast/libjson-rpc-cpp.git
cd libjson-rpc-cpp/build
cmake .. && make
sudo make install
sudo ldconfig
cd ../..

cd ~/ws/
git clone https://github.com/ethereum/tests
cd tests
git checkout develop
cd ..

cd ~/ws/
git clone https://github.com/ethereum/cpp-ethereum
cd cpp-ethereum/
git checkout develop

rm -rf build/
mkdir -p build
cd build/

cmake .. -DCMAKE_BUILD_TYPE=Release && make

#cd eth/
#./eth 

#cd alethzero/
#./alethzero

echo "DONE!"
