### Makefile --- 
## 
## Filename: Makefile
## Description: Makefile for the vuln.c file
## Author: guillaume francqueville
## Maintainer: guillaume francqueville
## Created: mar. avril 18 15:22:01 2017 (+0200)
## Last-Updated: 
##           By: 
##     Update #: 0
## 
### Code:


all: shellcode vuln disable_aslr

shellcode:
	./compile_shellcode.sh shellcode > shellcode.hex

vuln:
	gcc -z execstack vuln.c -o vuln

disable_aslr:
	echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
clean:
	rm -fr vuln shellcode shellcode.hex shellcode.o
	echo 2 | sudo tee /proc/sys/kernel/randomize_va_space


######################################################################
### Makefile ends here
