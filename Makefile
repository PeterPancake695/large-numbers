### COMPILER ###
CC = g++

### COMPILER FLAGS ###

CFLAGS = -O2 -Wall -std=c++17 -Wno-missing-braces

### TARGET ###

TARGET = largeNumbers

### SOURCE FILE ###

SRC = src/main.cpp

$(TARGET): src/*.cpp src/*.hpp Makefile
	$(CC) $< -o  $@ $(CFLAGS)

build: $(TARGET)

run: build
	./$(TARGET)

.PHONY = clean

clean:
	rm $(TARGET)
