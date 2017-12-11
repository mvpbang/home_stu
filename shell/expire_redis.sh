#!/bin/bash
#desc:  expire keys

#auth redis
auth="redis -h 10.104.0.10 -a baidu.com"

#select feature keys
$auth keys baidu* >/tmp/info.log

#loop expire keys
for i in `cat /tmp/info.log`;
do
  $auth <<EOF
    expire $i 3600
    EOF
done
