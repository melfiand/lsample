#include "assrt.hh"
#include "TimeStamp.hh"
#include "StatVector.hh"
#include <iostream>
#include <cstdio>

extern "C"
double collprob(long k, long n, long N);

void time_collp()
{
	long count = 5;
	long ks[] = {1, 2, 1, 20, 60};
	long ns[] = {10, 10, 100, 100, 120};
	long N = 1l*1000*100;
	TimeStamp clk;
	int ntrial = 100;
	StatVector stats(ntrial);
	double ans, cycles;
	for(long i=0; i < count; i++){
		long k = ks[i];
		long n = ns[i];
		for(long j=0; j < ntrial; j++){
			clk.tic();
			ans = collprob(k, n, N);
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
	
