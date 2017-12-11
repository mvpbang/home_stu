#!/bin/sh
#os :centos6.5
#des:redis-3.2.3.tar.gz

#pre-env
yum install -y gcc gcc-c++ libstdc++-devel  tcl -q

#build
tar zxf  redis-3.2.3.tar.gz && cd redis*

#制定内存碎片回收机制，建议使用make MALLOC=jemalloc
make -s MALLOC=libc
#make install -s
make PREFIX=/tmp/redis install -s

#set service
cd  utils
./install_server.sh
