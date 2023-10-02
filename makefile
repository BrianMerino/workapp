FLAGS ?= -std=c++11 -Wall -Wextra -Iinclude

bin/workout: obj/exercise.o obj/main.o
	g++ $(CFLAGS) obj/exercise.o obj/main.o -o bin/workout

obj/main.o: src/main.cpp
	g++ $(CFLAGS) -c src/main.cpp -o obj/main.o

obj/exercise.o: src/exercise.cpp include/exercise.h
	g++ $(CFLAGS) -c src/exercise.cpp -o obj/exercise.o

clean:
	 rm -f obj/* bin/*
