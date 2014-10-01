ethereum_devenv
===============

Vagrant-based environment for Ethereum-cpp

See:
https://github.com/ethereum/cpp-ethereum/wiki/Building-on-Ubuntu


Install latest VirtualBox
See: https://www.virtualbox.org/wiki/Linux_Downloads


``` bash
cd ~/Downloads
wget http://download.virtualbox.org/virtualbox/4.3.16/virtualbox-4.3_4.3.16-95972~Ubuntu~precise_amd64.deb
sudo dpkg -i virtualbox-4.3_4.3.16-95972~Ubuntu~precise_amd64.deb

VBoxManage --version

# if doesn't work then run:
sudo /etc/init.d/vboxdrv setup
```

Install latest Vagrant
See: http://www.vagrantup.com/downloads.html


``` bash
cd ~/Downloads/
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5_x86_64.deb
sudo dpkg -i vagrant_1.6.5_x86_64.deb

# add to your ~/.bashrc
export PATH=$PATH:/opt/vagrant/bin

vagrant version

	Vagrant 1.6.5
```


``` bash
vagrant up
vagrants ssh
cd ~/ws/cpp-ethereum/build/alethzero
./alethzero
```

See also: https://github.com/valzav/vagrant-ethereum

