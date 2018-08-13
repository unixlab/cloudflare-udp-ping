all: clean build

clean:
	rm -f udpserver
	rm -f udpclient

build:
	gcc -o udpserver udpserver.c net.c -pthread     -static
	gcc -o udpclient udpclient.c net.c -pthread -lm -static
