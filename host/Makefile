
CC      = $(CROSS_COMPILE)gcc
LD      = $(CROSS_COMPILE)ld
AR      = $(CROSS_COMPILE)ar
NM      = $(CROSS_COMPILE)nm
OBJCOPY = $(CROSS_COMPILE)objcopy
OBJDUMP = $(CROSS_COMPILE)objdump
READELF = $(CROSS_COMPILE)readelf

OBJS = hello_world.o

CFLAGS += -Wall -I../ta/include -I$(TEEC_EXPORT)/include
LDADD += -lteec -L$(TEEC_EXPORT)/lib

.PHONY: all
all: hello_world

hello_world: $(OBJS)
	$(CC) $(LDADD) -o $@ $<

.PHONY: clean
clean:
	rm -f $(OBJS) hello_world
