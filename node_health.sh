#!/bin/bash

##############
# Author : jaswanth
# date : 28th january
#
# this script outputs the node health
#
# version : v1
# ###################
#

#set -x # display output with commands

#set -e # stops the script if it finds an error
#set -o pipefail # if this is not present then the set-e will consider the last command and continue the output.

set -eo pipefail # append to above commands

touc remoral


echo "print the disk space"
df -h

echo "print the memory space"
free -g




echo "print the cpu "
nproc


ps -ef | grep amazon | awk -F " " '{print $2}'
