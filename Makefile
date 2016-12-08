TARGET = dht11_read
LIBS = -lm -lwiringPi
CC = gcc
CFLAGS = -g -Wall

.PHONY: default all clean

default: $(TARGET)
	sudo chown root:root $(TARGET)
	sudo chmod +s $(TARGET)

all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

test: all
	./dht11_read

clean:
	-rm -f *.o
	-rm -f $(TARGET)
