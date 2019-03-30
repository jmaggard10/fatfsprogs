export CFLAGS += -O2 -g -Wall -Werror -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -Wno-unused-variable -Wno-format -Wno-sign-compare -DSIGINFO=SIGUSR2 -D'nitems(x)=(sizeof((x))/sizeof((x)[0]))' -Dlint
INSTALL ?= install

all: mkfs.fat fsck.fat

mkfs.fat:
	$(MAKE) -C mkfs

fsck.fat:
	$(MAKE) -C fsck

install: all
	$(INSTALL) -D mkfs/mkfs.fat $(DESTDIR)/sbin/mkfs.fat
	$(INSTALL) -D fsck/fsck.fat $(DESTDIR)/sbin/fsck.fat

clean:
	$(MAKE) -C mkfs clean
	$(MAKE) -C fsck clean
