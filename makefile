OBJS	= cpp.o
SOURCE	= cpp.cpp
HEADER	= 
OUT		= cpp_test.out
CC		= /usr/local/oecore-x86_64/sysroots/x86_64-nilrtsdk-linux/usr/bin/arm-nilrt-linux-gnueabi/arm-nilrt-linux-gnueabi-g++ 
CFLAGS	= --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9-vfpv3-nilrt-linux-gnueabi
FLAGS	= -g -c -Wall
LFLAGS	= 

all: $(OBJS)
	$(CC) $(CFLAGS) -g $(OBJS) -o $(OUT) $(LFLAGS)

cpp.o: cpp.cpp
	$(CC) $(CFLAGS) $(FLAGS) cpp.cpp 


clean:
	rm -f $(OBJS) $(OUT)