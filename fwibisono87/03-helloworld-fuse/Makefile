CC=gcc
CFLAGS=-Wall -Wextra -std=c99
TARGET=hello

all: $(TARGET)

$(TARGET): hello.c
	$(CC) $(CFLAGS) -o $(TARGET) hello.c

clean:
	rm -f $(TARGET)
