#!/bin/bash

# Script to edit pre-seed only. This should be executed after building a iso. it will do a partial rebuild.
# Used for debugging purposes on the preseed.

#copy preseed to cd
cp autoinstall/preseed.cfg tmp/TDIR/jessie/CD1/preseed.cfg

#move in CD directory
cd tmp/TDIR/jessie/CD1
#fix md5sums
preseedmd5=`md5sum ./preseed.cfg`
sed -i s:'.*\./preseed\.cfg':"$preseedmd5": ./md5sum.txt

#remake .iso file
cd ../../../../debian-cd
. CONF.sh
make images
