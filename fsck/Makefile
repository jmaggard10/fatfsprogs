SOURCES = fsutil.c main.c check.c boot.c fat.c dir.c
OBJECTS = $(notdir $(addsuffix .o, $(basename $(SOURCES))))

all: fsck.fat

fsck.fat: $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJECTS) $(LIBS) -o fsck.fat

clean:
	rm -f *.o fsck.fat

$(OBJECTS): dosfs.h ext.h fsutil.h
