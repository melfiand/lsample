%.s: %.cpp 
	g++ -mavx -std=c++11 -fopenmp -fPIC -O3 -Drestrict="__restrict__" -S $< 
%.o: %.cpp
	g++ -mavx -std=c++11 -fopenmp -fPIC -O3 -Drestrict="__restrict__" -c $<
%.so: %.o
	g++ -mavx -std=c++11 -fopenmp -shared $^ -o $@ $(LIBS)
%.exe: %.o 
	g++ -mavx -std=c++11 -fopenmp -o $@ $(filter %.o,$^) $(LIBS)

.PHONY:all clean
all: c_simm.so 

c_simm.o: c_simm.cpp
c_simm.so: c_simm.o

time_simm.o: time_simm.cpp
time_simm.exe: time_simm.o c_simm.o

clean: 
	rm -fr *.so *.o *.pyc __pycache__
