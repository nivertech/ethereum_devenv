ethereum_devenv
===============

Vagrant-based environment for Ethereum-cpp and AlethZero GUI tool.

See:
https://github.com/ethereum/cpp-ethereum/wiki/Building-on-Ubuntu

----------------------------------------------------------------------------------------------

## How to install

NOTE: instractions assume Ubuntu 12.04 LTS x86_64 host OS (modify for your host OS)

1. Configure git and github on your host OS. You should use SSH authentication.

    [Generating SSH keys](https://help.github.com/articles/generating-ssh-keys)


2. Install latest VirtualBox from https://www.virtualbox.org/wiki/Downloads
    ``` bash
    cd ~/Downloads
	wget http://download.virtualbox.org/virtualbox/4.3.16/virtualbox-4.3_4.3.16-95972~Ubuntu~precise_amd64.deb
	sudo dpkg -i virtualbox-4.3_4.3.16-95972~Ubuntu~precise_amd64.deb

	VBoxManage --version

	# if doesn't work then run:
	sudo /etc/init.d/vboxdrv setup
    ```

3. Install latest Vagrant from https://www.vagrantup.com/downloads.html
    ``` bash
	cd ~/Downloads/
	wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5_x86_64.deb
	sudo dpkg -i vagrant_1.6.5_x86_64.deb

	# add to your ~/.bashrc
	export PATH=$PATH:/opt/vagrant/bin

	vagrant version

	#	Vagrant 1.6.5
    ```

4. Do:

    ``` bash
    mkdir -p ~/ws
    cd ~/ws
    git clone git@github.com:nivertech/ethereum_devenv.git
    cd ethereum_devenv
    ```    

6. Provision devenv:
    ``` bash
    vagrant up
    ```

7. This will take some time 15 - 20 min (depending on your network), go make coffee and when return:
	``` bash
	vagrants ssh
	cd ~/ws/cpp-ethereum/build/alethzero
	./alethzero
	```

--------------------------------------------------------------

See also: https://github.com/valzav/vagrant-ethereum

