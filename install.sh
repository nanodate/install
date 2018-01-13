#!/bin/bash
sudo apt-get install python3 -y
update-alternatives --install /usr/bin/python python /usr/bin/python3.4 2
python --version
if [ -e "/usr/bin/python2.7" ]; then
 echo 已安装python 2.7.9
 else
 echo 即将安装python 2.7.9
 sudo apt-get install python -y
fi
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
update-alternatives --set python /usr/bin/python2.7
python --version
sudo apt-get clean
sudo apt-get update
sudo apt-get install --reinstall python-minimal python-lockfile -y
update-alternatives --auto python
python --version
sudo apt-get install python3-pip -y
sudo apt-get install python3.4-dev -y
sudo apt-get install libevent-dev -y
sudo apt-get install gcc -y
sudo apt-get install g++ -y
sudo apt-get install make -y
sudo pip3 install NetEase-MusicBox
sudo apt-get install mpg123 -y
cd
wget http://zlib.net/zlib-1.2.11.tar.gz
tar -xvzf zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure
make
make install
wget http://www.ijg.org/files/jpegsrc.v9b.tar.gz
tar -xvzf jpegsrc.v9b.tar.gz
cd jpeg-9b
./configure
make
make install
git clone https://github.com/codezjx/netease-cloud-music-dl.git
cd netease-cloud-music-dl
python3 setup.py install
git clone https://github.com/xpertsavenue/WiringOP-Zero.git
cd WiringOP-Zero
chmod +x ./build
sudo ./build
cd
rm -rf zlib-1.2.11 install
wget http://cdn.npm.taobao.org/dist/node/v8.9.4/node-v8.9.4-linux-armv7l.tar.xz
tar -xvf node-v8.9.4-linux-armv7l.tar.xz
mkdir app
mv node-v8.9.4-linux-armv7l /root/app/node
echo "export PATH=/root/app/node/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
ln -s /root/app/node/bin/node /usr/local/bin/node
ln -s /root/app/node/bin/npm /usr/local/bin/npm
rm node-v8.9.4-linux-armv7l.tar.xz zlib-1.2.11.tar.gz
