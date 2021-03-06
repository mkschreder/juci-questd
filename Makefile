CC		= gcc
CFLAGS		= -g -Wall -I../ -I../ubus -I../uci
LOCLIBS		= 
LIBS		= -L../lib -luci -lubus -lubox -lpthread
OBJS		= questd.o dumper.o port.o arping.o usb.o ndisc.o dslstats.o tools.o igmp.o
SRCS		= questd.c dumper.c port.c arping.c usb.c ndisc.c dslstats.c tools.c igmp.c
LIBSRCS		= 
ISRCS		= questd.h

all: questd

questd: ${OBJS}
	${CC} ${LDFLAGS} ${LIBSRCS} -o questd ${OBJS} ${LIBS}

clean:
	rm -f questd *.o

