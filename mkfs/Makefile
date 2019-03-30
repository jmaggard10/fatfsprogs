SOURCES = newfs_msdos.c mkfs_msdos.c
OBJECTS = $(notdir $(addsuffix .o, $(basename $(SOURCES))))

all: mkfs.fat

mkfs.fat: $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJECTS) $(LIBS) -o mkfs.fat

clean:
	rm -f *.o mkfs.fat

$(OBJECTS): mkfs_msdos.h
