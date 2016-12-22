#this is ran by the debian-cd scripts. $1 is the path to the temp folder. 
#the script simply adds the preseed to the CD tree.
cp $1/../../autoinstall/preseed-dev.cfg $1/jessie/CD1/preseed.cfg
