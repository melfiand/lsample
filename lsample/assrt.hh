#ifndef assrt10july17
#define assrt10july17

/*
 * (Based on http://stackoverflow.com/questions/5252375/custom-c-assert-macro.)
 * Like assert() in <cassert> but works outside DEBUG mode too.
 */
#define assrt(cond) \
    do \
    { \
	 if (!(cond)) \
	 { \
		  std::cout<<"ASSRT FAILED:"<<#cond<<std::endl	\
			   <<"file: "<<__FILE__<<std::endl	\
			   <<"line: "<<__LINE__<<std::endl;	\
		 __builtin_trap();				\
        } \
    } while(0)  

#endif
