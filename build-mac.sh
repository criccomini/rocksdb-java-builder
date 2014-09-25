#!/usr/bin/env bash
# set java home so we can build rocksdb jars
export JAVA_HOME=$(/usr/libexec/java_home)
BUILD_ROOT=$(pwd)/build
BUILD_ARCH_DIR=$BUILD_ROOT/rocksdb-osx

# checkout rocksdb
mkdir -p $BUILD_ROOT
rm -rf $BUILD_ARCH_DIR
git clone https://github.com/facebook/rocksdb.git $BUILD_ARCH_DIR

# build rocksdb
cd $BUILD_ARCH_DIR
make -j 4 rocksdbjavastatic

