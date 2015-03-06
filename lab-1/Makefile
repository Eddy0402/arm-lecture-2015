CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O1 -Wall -std=c99
LDFLAGS = -fno-stack-protector

objects	= fibseq.o fib.o

default: fibseq

.PHONY: default clean qemu

fibseq: $(objects)
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(objects) fibseq

QEMU_CMD = qemu-arm -L /usr/arm-linux-gnueabihf ./fibseq
qemu: fibseq
	@test=1 ; while [ $$test -le 46 ] ; do \
		yes $$test | $(call QEMU_CMD); \
		test=`expr $$test + 1`; \
	done

