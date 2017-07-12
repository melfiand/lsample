#include "assrt.hh"
#include "TimeStamp.hh"
#include "StatVector.hh"
#include <iostream>
#include <cstdio>
#include <cmath>

double collprob_opt(long k, long n);
double collprob_unopt(long k, long n, long N);

extern "C"
void onlydouble(long n, double* output, long* N, long maxgens, double tol);

extern "C"
void notriple(long n, double* output, long* N, long maxgens, double tol);

void gl_setnmax(long n);
void gl_setN(long N);
void gl_setoptflag(bool b);

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
	    ans = collprob_opt(k, n);
	    cycles = clk.toc();
	    stats.insert(cycles);
	}
	printf("ans: %.2e\n", ans);
	printf("k, n: %ld, %ld\n", k, n);
	printf("cycles (median): %.2e\n", stats.median());
	printf("cycles (min): %.2e\n\n", stats.min());
	stats.flush();
    }
    return;
}

void triple_speedcomp()
{
    TimeStamp clk;
    double cycles;
    double cycles2;
    long N[1000000];
    for (int i=0;i<1000000;i++) N[i]=10000;
    double outp[1000];
    double outp2[1000];
    long n=40;
    double tol=.01;
    printf("Running slow:----------------------\n");
    clk.tic();
    gl_setoptflag(false);
    notriple(n,outp,N,1000000,tol);
    cycles = clk.toc();
    printf("Running fast:----------------------\n");
    clk.tic();
    gl_setoptflag(true);
    notriple(n,outp2,N,1000000,tol);
    cycles2 = clk.toc();
    printf("For n=%ld, N=%d, notriple:\n",n,10000);
    printf("cycles for slow version: %.2e\n", cycles);
    printf("cycles for fast version: %.2e\n", cycles2);
    double absdiff=0;
    for (int i=0;i<n;i++)
        absdiff+=std::abs(outp[i]-outp2[i]);
    printf("Abs diff between output results: %.3e\n\n\n", absdiff);
    return;
}

void double_speedcomp()
{
    TimeStamp clk;
    double cycles;
    double cycles2;
    long N[1000000];
    for (int i=0;i<1000000;i++) N[i]=10000;
    double outp[1000];
    double outp2[1000];
    long n=100;
    double tol=.01;
    printf("Running slow:----------------------\n");
    clk.tic();
    gl_setoptflag(false);
    onlydouble(n,outp,N,1000000,tol);
    cycles = clk.toc();
    printf("Running fast:----------------------\n");
    clk.tic();
    gl_setoptflag(true);
    onlydouble(n,outp2,N,1000000,tol);
    cycles2 = clk.toc();
    printf("For n=%ld, N=%d, onlydouble:\n",n,10000);
    printf("cycles for slow version: %.2e\n", cycles);
    printf("cycles for fast version: %.2e\n", cycles2);
    double absdiff=0;
    for (int i=0;i<n;i++)
        absdiff+=std::abs(outp[i]-outp2[i]);
    printf("Abs diff between output results: %.3e\n\n\n", absdiff);
    return;
}
void triple_speedtest()
{
    TimeStamp clk;
    double cycles;
    long N[1000000];
    for (int i=0;i<1000000;i++) N[i]=10000;
    double outp[1000];
    long n=200;
    double tol=.01;

    clk.tic();
    gl_setoptflag(true);
    notriple(n,outp,N,1000000,tol);
    cycles=clk.toc();
    printf("For n=%ld, N=%d:\n",n,10000);
    printf("cycles: %.2e\n", cycles);
}

int main()
{
    //time_collp();
    //triple_speedtest();
    triple_speedcomp();
    double_speedcomp();
}
	
