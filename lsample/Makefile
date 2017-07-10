CPP 	 := icpc
CFLAGS 	 := -xhost -O3 -fPIC -prec-div -no-ftz -restrict -Wshadow
#CPP 	 := g++
#CFLAGS 	 := -msse2 -O3 -std=c++11 -fPIC -Drestrict="__restrict__"  -Wshadow

%.s: %.cpp 
	$(CPP) $(CFLAGS) -S $< 
%.o: %.cpp
	$(CPP) $(CFLAGS) -c $<
%.so: %.o
	$(CPP) $(CFLAGS) -shared $^ -o $@ $(LIBS)
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
