#-----Macros---------------------------------

EXEC = IntCount

INCLUDE_FLAGS = -Iusr/include
LIB_FLAGS = -lglpk
STATIC_FLAG = -static

# set up compiler and options
CXX = g++
CXXFLAGS = -g $(INCLUDE_FLAGS) -O3 -std=c++11 -Wall

#-----File Dependencies----------------------

SRC = src/main.cpp src/polytope.cpp src/solver.cpp

OBJ = $(addsuffix .o, $(basename $(SRC)))

all: main

depend: 
	$(CXX) $(CXXFLAGS) -MM $(SRC) > .depend.tmp
	@rm -f .depend
	@sed "s/^/src\/&/g" .depend.tmp >> .depend
	@rm -f .depend.tmp
	
-include .depend 

main: $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(EXEC) $(OBJ) $(LIB_FLAGS)

static: $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(EXEC) $(OBJ) $(LIB_FLAGS) $(STATIC_FLAG)

clean:
	rm -f $(OBJ) .depend $(EXEC) 
