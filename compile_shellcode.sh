#!/bin/bash

#Script Assemblage / Linkagage / GetShellCode for Asm programm

#Get Programme Name
PROG_NAME=$1

#Assemble
$(nasm -f elf64 $PROG_NAME.asm)

#Link
$(ld $PROG_NAME.o -o $PROG_NAME -m elf_x86_64)

#GetPayload ShellCode
BULL_SHIT=$(for i in $(objdump -d $PROG_NAME | grep "^ " | cut -f2); do echo -n $i;done;echo)

#Prepare commande for test
echo $BULL_SHIT
