#!/bin/bash 
nasm -f bin 32push.S -o 32push.o
objdump -D -b binary -m i8086 32push.o
