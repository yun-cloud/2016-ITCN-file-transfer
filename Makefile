all: server.c client.c
	gcc server.c -o server.o
	gcc client.c -o client.o

clean:
	rm -rf server.o
	rm -rf client.o
