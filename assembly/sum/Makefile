dir = generated


all: $(dir)/sum.o
	gcc -o $(dir)/sum $(dir)/sum.o -nostdlib -static


$(dir)/sum.o:
	as sum.asm -o $(dir)/sum.o

clean:
	rm -f $(dir)/sum.o
