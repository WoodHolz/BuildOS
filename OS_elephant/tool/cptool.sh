#!/bin/basha
findfile = boshsrc.disk makefile    
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
                cp ../../tool/bochsrc.bochs ../../tool/bochsrc_gdb.bochs ../../tool/kernel.ld ../../tool/makefile ./
                ls
                echo "==============update tool done============="
                cd ..
            else 
                cd ..
            fi 
        fi
    done
