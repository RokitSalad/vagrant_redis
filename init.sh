#!/bin/bash

sudo apt-get install make

mkdir /opt/redis
mkdir /opt/redis/bin

cd /opt/redis
wget http://download.redis.io/releases/redis-2.8.12.tar.gz
tar xzf redis-2.8.12.tar.gz

cd redis-2.8.12
make

src/redis-server

#cp src/redis-server /opt/redis/bin/redis-server
#cp src/redis-cli /opt/redis/bin/redis-cli

#cp /vagrant/redis.init.d /etc/init.d/redis
#cp /vagrant/redis.conf /etc/redis.conf

#useradd redis

#/etc/init.d/redis start