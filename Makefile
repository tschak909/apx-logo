##
## Charset logo makefile. 
##

.PHONY: all clean

all: apx.xex

apx.xex:
	mads src/apx.asm -l:apx.lst -o:apx.xex

clean:
	rm -rf apx*

