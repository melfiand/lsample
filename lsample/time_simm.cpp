#include "assrt.hh"
#include "TimeStamp.hh"
#include "StatVector.hh"
#include <iostream>
#include <cstdio>

double collprob_opt(long k, long n, long N);
double collprob_unopt(long k, long n, long N);
void gl_setnmax(long n);
void gl_setN(long N);

void time_collp()
{
	long count = 8;
	long ks[] = {1, 2, 1, 20, 1, 200, 1, 2000};
	long ns[] = {10, 10, 100, 100, 1000, 1000, 10000, 10000};
	gl_setnmax(500);	
	long N = 1l*1000*100;
	gl_setN(N);
	
	TimeStamp clk;
	int ntrial = 100;
	StatVector stats(ntrial);
	double ans, cycles;
	for(long i=0; i < count; i++){
		long k = ks[i];
		long n = ns[i];
		for(long j=0; j < ntrial; j++){
			clk.tic();
			ans = collprob_opt(k, n, N);
			cycles = clk.toc();
			stats.insert(cycles);
		}
		printf("ans: %.2e\n", ans);
		printf("k, n: %ld, %ld\n", k, n);
		printf("cycles (median): %.2e\n", stats.median());
		printf("cycles (min): %.2e\n\n", stats.min());
		stats.flush();
	}
}

int main()
{
	time_collp();
}
	
