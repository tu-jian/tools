CROSS_COMPILE=arm-none-linux-gnueabi-

CURDIR=$(PWD)
CC = $(CROSS_COMPILE)gcc

CFLAGS += -Wall -O2 -I./include
#LDFLAGS += -L$(CURDIR)/lib -ljpeg

SRCS = $(wildcard *.c)
#SRCS += $(patsubst %.c,%.o,$(wildcard src/*.c))

OBJS = $(SRCS:.c=.o)
DEPENDS = $(SRCS:.c=.d)

TARGET = modem_test

$(TARGET): $(OBJS)
	$(CC) $^ -o $@ $(LDFLAGS)

clean:
	rm -f $(OBJS) $(TARGET) $(DEPENDS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<


-include $(DEPENDS)
%.d: %.c
	@set -e; rm -f $@; \
		$(CC) -MM $(CFLAGS) $< > $@.$$$$; \
		sed 's,\($(notdir $*)\)\.o[ :]*,$(basename $@)\.o $@ : ,g' < $@.$$$$ > $@; \
		rm -f $@.$$$$