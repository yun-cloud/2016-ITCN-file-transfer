# File-transfer
## Today's mission

You will need to write simple file transfer client and server in language `C`.  
Please modify to the sample code to achieve this goal.  
Fill in your own code by following the hint in the code.  

```c
/**
  TODO:
  print something here.
**/
```

## Install
### With simple browser

You can click `Download ZIP` to download a zip file directly

### With Git
1. Install Git on your system
2. Open command prompt
3. Input `git clone https://github.com/HSNL-TAs/2016-ITCN-file-transfer.git`

## Compile and Run
### Compile with makefile
What in makefile
```makefile
all: server.c client.c
	gcc server.c -o server.o
	gcc client.c -o client.o

clean:
	rm -rf server.o
	rm -rf client.o
```

### compile  
```sh
$ make
```

### run
```sh
$ ./server.o 8888
```
Open another termial.
```sh
$ ./client.o 127.0.0.1 8888
```

## Requirement
### Server
You should implement following functions in your server.

- User can assign **port** to server
- Returns files list to client when the client connects immediately to the server. (We have provided this function which scans all the file under the same directory.)  
	```sh
	# Client side
	$ ./client 127.0.0.1
	[✓] Connect to server.
	[✓] Server reply!
	-----------
	Files on server:
	123.txt
	test.txt
	-----------
	Enter the filename:
	```
- Returns files which client wants to download.  
	```sh
	# Client side
	Enter the filename: 123.txt
	[-] Downloading `123.txt` ...
	[✓] Download successfully!
	-----------
	Enter the filename: # user can continue to send download request.
	```

### Client
- User can assign **ip address** and **port** to connect the server with command line argument.
- Support user inputs the file name to download file from server, per file per input.
- Input `.exit` to disconnect from server.
Note:

**NOTE:** Server and client should keep connected unless user inputs `.exit`

## Deadline
If your team don't finish the lab in the class, you can still demonstrate this lab when TA time (15:30 ~ 17:20 on Wed.)
Please also uplaod your code to ilms system

- Deadline: 100%, before 2016/11/21 (Mon.)
- Deadline: 80%, before 2016/11/28 (Mon.)
- Deadline: 60%, before 2016/12/5 (Mon.)

After 2016/12/7, your submission is not accepted.

## Problems

Filling any problem in [issues](https://github.com/HSNL-TAs/2016-ITCN-file-transfer/issues) or nthu ilms is welcome.
