#!/bin/bash
# 
# the shell script is used to build a image
# move this file to the path where the Bochs installed
# yeah I don't want to input the bloody cmd line
# 
# author: WoodHolz 
# date:   2023/8/30
#

echo "start buildimg for Bochs"
echo "--------------------------------------------------------------------------------------------------"
echo "input the image size you want: (MB)"
read  number
echo "input the image name you want: "
read  name
echo "--------------------------------------------------------------------------------------------------"
bin/bximage -hd -mode="flat" -size=$number -q $name.img
echo "--------------------------------------------------------------------------------------------------"
echo "done"
