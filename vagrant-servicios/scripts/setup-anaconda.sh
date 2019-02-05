#!/bin/bash
source "/vagrant/scripts/common.sh"

function installAnaconda {
	echo "install anaconda"
	cd /usr/local
	wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh
	chown vagrant:vagrant Anaconda3-2018.12-Linux-x86_64.sh
	chmod 750 Anaconda3-2018.12-Linux-x86_64.sh
}

echo "setup anaconda"
installAnaconda
