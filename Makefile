#
# QR Code generator library
#
# This is a very simple Makefile for the bits that make QR codes
# Chuck McManis, cmcmanis@mcmanis.com
#

#
# To just build generically uncomment out these
#
#CC= gcc
#AR= ar

#
# To build for a Cortex M4 target uncomment these
#
CC=arm-none-eabi-gcc
AR=arm-none-eabi-ar
CFLAGS += -mthumb -mcpu=cortex-m4 
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16

CFLAGS += -Os -g

SRCS= bitstream.c \
	mask.c \
	qrencode.c \
	qrinput.c \
	qrspec.c \
	rscode.c \
	split.c

OBJS= ${SRCS:%.c=%.o}

all: libqrcode.a

libqrcode.a: $(OBJS)
	$(AR) -rv -o libqrcode.a $(OBJS)

clean:
	rm -rf $(OBJS)
	rm -f libqrcode.a

