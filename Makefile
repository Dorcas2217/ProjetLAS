CFLAGS=-std=c11 -pedantic -Wall -Wvla -Werror -D_DEFAULT_SOURCE -g - D_XOPEN_SOURCE - D_BSD_SOURCE
ALL= zombie controller #labo

all: zombie controller

zombie : zombie.o utils_v2.o
	$(CC) $(CCFLAGS) -o zombie zombie.o utils_v2.o

zombie.o : zombie.c utils_v2.h header.h 
	$(CC) $(CCFLAGS) -c zombie.c

controller : controller.o utils_v2.o
	$(CC) $(CCFLAGS) -o controller controller.o utils_v2.o

controller.o : controller.c utils_v2.h header.h 
	$(CC) $(CCFLAGS) -c controller.c

#labo : labo.o utils_v2.o
#$(CC) $(CCFLAGS) - o labo labo.o utils_v2.o
#
#labo.o : labo.c utils_v2.h messages.h
#$(CC) $(CCFLAGS) - c labo.c

utils_v2.o : utils_v2.c utils_v2.h 
	$(CC) $(CCFLAGS) -c utils_v2.c

clear : 
		clear

clean: 
	rm - f *.o
	rm - f zombie controller