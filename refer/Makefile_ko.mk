KERNEL_PATH = /home/tujian/work/elite-project
CUR_DIR = $(shell pwd)

ARCH = arm
CROSS_COMPILE = arm-none-linux-gnueabi-

export ARCH CROSS_COMPILE

CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)ld

#only one file
obj-m := file.o

#more than one file
#obj-m := module_name.o
#module_name-objs := file1.o file2.o

#EXTRA_CFLAGS = -g -O0

.PHONY: module clean

module:
	make -C $(KERNEL_PATH) M=$(CUR_DIR) modules

clean:
	make -C $(KERNEL_PATH) M=$(CUR_DIR) clean
