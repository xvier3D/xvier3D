SHELL=/system/bin/sh

CC=clang
CXX=clang++

TARGET=main
FILES=main.c
LIBS=-lc

all: $(TARGET)

$(TARGET): $(FILES)
	$(CC) $(FILES) -o $(TARGET) $(LIBS)
.PHONY: $(TARGET)

run: $(TARGET)
	./$(TARGET)

clean: $(TARGET)
	rm $(TARGET)
