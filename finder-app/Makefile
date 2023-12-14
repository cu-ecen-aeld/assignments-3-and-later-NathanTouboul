
CC = gcc

ifdef CROSS_COMPILE
PATH="../../arm-cross-compiler/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin/"
CC = $(PATH)$(CROSS_COMPILE)gcc
endif

FLAGS = -Wall -o

all: writer
	$(CC) writer.c $(FLAGS) writer 
clean:
	rm -f *.o writer *.elf *.map
