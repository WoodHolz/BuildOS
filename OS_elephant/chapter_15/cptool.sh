#!/bin/bash
findfile=boshsrc.disk makefile
srcdir=../../tool
for file in $(ls)
    do
        if [ -d $file ] 
        then
            cd $file
            if [ -e $findfile ]
            then
                echo "==============delete start============"
                rm bochsrc.disk log.bochsrc.disk build makefile tags run.sh -r
                echo "==============$file delete done=============="
                echo "==============update tool============="
                cp $srcdir/* ./
                rm ./cptool.sh
                ls
                echo "==============update tool done============="
                cd ..
            else 
                cd ..
            fi 
        fi
    done
