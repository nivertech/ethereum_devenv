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

	# update PATH in your ~/.bashrc
	echo 'export PATH=$PATH:/opt/vagrant/bin' > ~/.bashrc

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

Intro to Ethereum VM with Gaiv Woods:
- https://blog.ethereum.org/2014/08/06/programming-society-with-asm-gavin-wood-at-assembly-2014/

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
 

Ethereum White Paper
- https://www.ethereum.org/pdfs/EthereumWhitePaper.pdf

Ethereum Yellow Paper
- http://gavwood.com/paper.pdf



Search HN:
https://hn.algolia.com/?q=ethereum#!/story/sort_by_date/0/ethereum

--------------------------------------------------------------

### See

Official Dockerized cpp-ethereum (does it support GUI?)
https://github.com/ethereum/cpp-ethereum/tree/develop/docker

### TODO

Dockerized version?

Running GUI apps with Docker
- http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
- https://news.ycombinator.com/item?id=8426764

