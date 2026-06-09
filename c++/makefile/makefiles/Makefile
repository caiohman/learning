exec = exec_name
main = Six
dir = src

all: $(main).o
	g++ -o $(exec) $(main).o

$(main).o: $(dir)/$(main).cpp
	g++ -c $(dir)/$(main).cpp -Wall

clean:
	rm -rf *.o

run:
	./$(exec)
