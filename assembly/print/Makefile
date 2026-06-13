dir = generated

all: $(dir)/print.o
	gcc -o $(dir)/print $(dir)/print.o -nostdlib -static


$(dir)/print.o:
	as print.asm -o $(dir)/print.o

clean:
	rm -f $(dir)/print.o


