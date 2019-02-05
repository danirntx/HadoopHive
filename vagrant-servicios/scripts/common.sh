#!/bin/bash

#
# Version information is defined the versions.sh file
#
source "/vagrant/scripts/versions.sh"

# Curl options
CURL_OPTS="-Ss --retry 10 "

# java
JAVA_ARCHIVE=jdk-8u201-linux-x64.tar.gz

# hadoop
HADOOP_PREFIX=/usr/local/hadoop
HADOOP_CONF=$HADOOP_PREFIX/etc/hadoop
HADOOP_ARCHIVE=$HADOOP_VERSION.tar.gz
HADOOP_MIRROR_DOWNLOAD=http://apache.mirrors.pair.com/hadoop/common/$HADOOP_VERSION/$HADOOP_ARCHIVE
HADOOP_RES_DIR=/vagrant/resources/hadoop

# Yarn
HADOOP_YARN_HOME=$HADOOP_PREFIX

# hive
HIVE_ARCHIVE=apache-hive-${HIVE_VERSION}-bin.tar.gz
HIVE_MIRROR_DOWNLOAD=http://apache.uvigo.es/hive//hive-${HIVE_VERSION}/$HIVE_ARCHIVE
HIVE_RES_DIR=/vagrant/resources/hive
HIVE_CONF=/usr/local/hive/conf
HIVE_PREFIX=/usr/local/hive
HIVE_EXEC_JAR=${HIVE_PREFIX}/lib/hive-exec-${HIVE_VERSION}.jar

#HIVE_EXEC_JAR=${HIVE_PREFIX}/lib/hive-exec-${HIVE_VERSION}.jar

# spark
SPARK_ARCHIVE=$SPARK_VERSION-bin-hadoop2.7.tgz
SPARK_MIRROR_DOWNLOAD=http://apache.rediris.es/spark/$SPARK_VERSION/$SPARK_ARCHIVE
SPARK_RES_DIR=/vagrant/resources/spark
SPARK_HOME=/usr/local/spark
SPARK_CONF=${SPARK_HOME}/conf
SPARK_CONF_DIR=${SPARK_CONF}

# ssh
#SSH_RES_DIR=/vagrant/resources/ssh
#RES_SSH_COPYID_ORIGINAL=$SSH_RES_DIR/ssh-copy-id.original
#RES_SSH_COPYID_MODIFIED=$SSH_RES_DIR/ssh-copy-id.modified
#RES_SSH_CONFIG=$SSH_RES_DIR/config

# Utility functions
function resourceExists {
	FILE=/vagrant/resources/$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

function fileExists {
	FILE=$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}
