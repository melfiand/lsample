%.o: %.cpp
	g++ -std=c++11 -fopenmp -fPIC -O3 -Drestrict="__restrict__" -c $<
%.so: %.o
	g++ -std=c++11 -fopenmp -shared $^ -o $@ $(LIBS)

.PHONY:all clean
all: c_simm.so 

c_simm.o: c_simm.cpp
c_simm.so: c_simm.o

clean: 
	rm -fr *.so *.o *.pyc __pycache__
