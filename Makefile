CC = gcc
CFLAGS = -Wall -I/usr/include/SDL2
LIBS = -lSDL2 -lSDL2_image

SRC = src/main.c src/character.c
OBJ = $(SRC:.c=.o)
EXEC = THNO

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
