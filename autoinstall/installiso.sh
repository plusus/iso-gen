#/bin/sh

#this script must be run as root.
# arg1: drive to copy from
# arg2: iso to copy

#unmount if previously mounted
umount $1

echo "copying iso to disk..."
dd if=$2 of=$1 bs=4M && sync

echo "wait 10 secs for the drive to sync..."
sleep 10

echo "all done!"



