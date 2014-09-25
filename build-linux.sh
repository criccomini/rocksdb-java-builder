#!/usr/bin/env bash
# install all required packages for rocksdb
sudo apt-get -y install git make gcc g++ libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev default-jdk

# set java home so we can build rocksdb jars
export JAVA_HOME=$(echo /usr/lib/jvm/java-7-openjdk*)
ARCH=$(uname -m)
BUILD_ROOT=/vagrant/build
BUILD_ARCH_DIR=$BUILD_ROOT/rocksdb-linux-$ARCH

# checkout rocksdb
mkdir -p $BUILD_ROOT
rm -rf $BUILD_ARCH_DIR
git clone https://github.com/facebook/rocksdb.git $BUILD_ARCH_DIR

# build rocksdb
cd $BUILD_ARCH_DIR
make -j 4 rocksdbjavastatic

