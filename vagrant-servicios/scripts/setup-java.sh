#!/bin/bash
source "/vagrant/scripts/common.sh"

function installRemoteJava {
	echo "install jdk"
	cd /usr/local
	cp /vagrant/resources/jdk-8u201-linux-x64.tar.gz /usr/local
	tar -xzvf jdk-8u201-linux-x64.tar.gz
	mv jdk1.8.0_201/ java
}

function setupEnvVars {
	echo "creating java environment variables"
     	echo "Setting JAVA_HOME"
	JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
	ln -s ${JAVA_HOME} /usr/local/java
        echo "export JAVA_HOME=/usr/local/java" >> /etc/profile.d/java.sh
	echo export PATH=/usr/local/java/bin:\${PATH} >> /etc/profile.d/java.sh
	source /etc/profile.d/java.sh
}

function installJava {
	installRemoteJava
}

echo "setup java"
installJava
setupEnvVars


