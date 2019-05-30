#!/bin/bash
# Install Spark on CentOS
yum install java -y
java -version

yum install wget -y
wget http://downloads.typesafe.com/scala/2.12.8/scala-2.12.8.tgz
tar xvf scala-2.12.8.tgz
sudo mv scala-2.12.8 /usr/lib
sudo ln -s /usr/lib/scala-2.12.8 /usr/lib/scala
export PATH=$PATH:/usr/lib/scala/bin
scala -version

wget http://d3kbcqa49mib13.cloudfront.net/spark-2.4.3-bin-hadoop2.6.tgz
tar xvf spark-2.4.3-bin-hadoop2.6.tgz

export SPARK_HOME=$HOME/spark-2.4.3-bin-hadoop2.6
export PATH=$PATH:$SPARK_HOME/bin

echo 'export PATH=$PATH:/usr/lib/scala/bin' >> .bash_profile
echo 'export SPARK_HOME=$HOME/spark-2.4.3-bin-hadoop2.6' >> .bash_profile
echo 'export PATH=$PATH:$SPARK_HOME/bin' >> .bash_profile
