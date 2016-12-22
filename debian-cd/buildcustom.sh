#!/bin/bash -e

# Script to build images for one or more architectures and/or source
# argument: CONF script to source before starting the generation
if [ $# -eq 0 ]; then
	confscript="CONF-dev.sh"
	echo "no conf script provided, using CONF-dev.sh as default"
else
	confscript=$1
fi
START=`date -u`
echo "$START: Starting iso generation"

. ./$confscript
make distclean
make status
make packagelists TASK=Debian-plus-us COMPLETE=0
make image-trees
make images

END=`date -u`
echo "$END: Iso generation Finished."
