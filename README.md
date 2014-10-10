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

	# run eth CLI client
	cd ~/ws/cpp-ethereum/build/eth
	./eth

	# OR run AlethZero GUI client
	cd ~/ws/cpp-ethereum/build/alethzero
	./alethzero
	```

--------------------------------------------------------------

See also: https://github.com/valzav/vagrant-ethereum

--------------------------------------------------------------

###Links for developers:

Ethereum London Workshop:
- http://www.meetup.com/ethereum/events/194948042/?fromJoin=194948042

ethereum training modules
- https://ethercasts.github.io/training/#/
- https://github.com/EtherCasts/training


Ethereum tutorials for developers
- http://softwareconfidence.com/?p=211
- http://forum.ethereum.org/discussion/1402/how-to-get-started-your-first-dapp-under-one-hour

Climbing the Ethereum Trie
- http://blog.galtstreet.com/post/96173057355/climbing-ethereum-trie


Search HN:
https://hn.algolia.com/?q=ethereum#!/story/sort_by_date/0/ethereum

--------------------------------------------------------------

### TODO

Dockerized version?

Running GUI apps with Docker
- http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
- https://news.ycombinator.com/item?id=8426764

