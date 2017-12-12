#!/bin/bash
#编写个shell 脚本将/usr/local/test 目录下大于100K 的文件转移到/tmp目录下
for file in `ls /root`
do
  if [ -f $file ]; then
      if [ `ls -l $file|awk '{print $5}'` -gt 10000 ]; then
        mv $file /tmp/
      fi
  fi
done

#find / -size +100K -a -type f |xargs -n1 mv {} /tmp/
#-exec 太多结果导致溢出 
