CC = gcc
CF = -c -std=c99

all: myshell

myshell: filesys.o shell.o
	$(CC) -o shell.o filesys.o

filesys.o: filesys.c filesys.h
	$(CC) $(CF) filesys.c

shell.o: shell.c
	$(CC) $(CF) shell.c

clean: 
	rm -f myshell
	rm -f *.o
