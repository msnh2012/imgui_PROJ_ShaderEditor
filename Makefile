COMPILER := g++
STD 	 := c++20
FLAGS 	 := -ggdb -Wall -Weffc++ -Wextra -Wsign-conversion -Werror
INCLUDE  := -Iinclude/
LIB 	 := -Llib/
LIBS 	 := -lglfw3dll -lopengl32

SRC := comp/*.o src/*.cpp src/glad.c


test: compile run clean
build: compile run

compile:
	@-mkdir out
	-$(COMPILER) -g --std=$(STD) $(INCLUDE) $(LIB) $(SRC) $(LIBS) -o out/main

comp_libs:
	@-mkdir comp
	-$(COMPILER) -c --std=$(STD) $(INCLDUE) $(LIB) include/imgui/*.cpp $(LIBS)
	mv *.o comp/

run:
	@echo ""
	./out/main $(args)

clean:
	@echo ""
	rm -f out/*.o out/*.exe

clean_all:
	@echo ""
	rm -rd out

