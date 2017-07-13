#include "assrt.hh"
#include <xmmintrin.h>
#include <omp.h>
#include <iostream>
#include <cstdio>
#include <cstdlib>

#define ZERO_TOL 1e-120

using namespace std;

static double *gl_idbl=NULL;
static double *gl_altby2N=NULL;
static double *gl_onemiby2N=NULL;
static long gl_nmax = -1000;
static long gl_N = -1000;
static bool gl_optflag = true;
/*
 * gl_state 0: variables uninitialized not allocated.
 *          1: variables uninitialized and allocated
 *          2: variables initialized and allocated
 */
static long gl_state = 0;

static void alloc(long n){
    gl_idbl =(double *)_mm_malloc((n+1)*sizeof(double), 16);
    gl_altby2N = (double *)_mm_malloc((n+1)*sizeof(double), 16);
    gl_onemiby2N = (double *)_mm_malloc((n+1)*sizeof(double), 16);
}

static void dealloc(){
    _mm_free(gl_idbl);
    _mm_free(gl_altby2N);
    _mm_free(gl_onemiby2N);
    gl_idbl=NULL;
    gl_altby2N=NULL;
    gl_onemiby2N=NULL;
    gl_state=0;
}

void gl_setoptflag(bool b){
    gl_optflag=b;
    return;
}

void gl_setnmax(long n){
    assrt(n > 0);
    switch(gl_state){
    case 0:
    	assrt(gl_idbl==NULL);
    	assrt(gl_altby2N==NULL);
    	assrt(gl_onemiby2N==NULL);
    	gl_nmax = n;
    	gl_N = -1000;
    	alloc(gl_nmax);
    	gl_state = 1;
    	break;
    case 1:
    case 2:
    	if(gl_nmax >= n)
    	    return;
    	else{
	    dealloc();
	    gl_nmax = n;
	    gl_N = -1000;
	    alloc(gl_nmax);
	    gl_state = 1;
	}
	break;
    default:
    	assrt(0==1);
    	break;
    }
    return;
}

void gl_setN(long N){
    assrt((gl_state==1) || (gl_state==2));
    if (gl_N==N) return;
    gl_N = N;
    long n = gl_nmax;
    for(long i=0; i < n+1; i++)
    	gl_idbl[i] = i;
    for(long i=0; i < n+1; i++)
    	if (i%2 == 0)
    	    gl_altby2N[i] = 1.0;
	else
	    gl_altby2N[i] = 1.0/(i+1)/(2*N);
    for(long i=0; i < n+1; i++)
	gl_onemiby2N[i] = 1.0- i*1.0/(2*N);
    gl_state = 2;
    return;
}

/*
 * k: number of double collisions.
 * n: sample size.
 * N: haploid population size is 2*N.
 * Returns probability of k double collisions in single bwd WF step.
 */

double collprob_opt(long k, long n)
{
    double p=1.0;
    double *restrict idbl = gl_idbl;
    double *restrict altby2N = gl_altby2N;
    double *restrict onemiby2N = gl_onemiby2N;

    //n*(n-1)..(n-2k+1)*(2k-1)..3.1/(2k)!/(2N)**k
    for (long i=0;i<2*k;i++){
    	p *= idbl[n-i];
    	p *= altby2N[i];
    }
    for (long i=n-k-1;i>0;i--){
    	p *= onemiby2N[i];
    }
    return p;
}

double collprob_unopt(long k, long n, long N)
{
    double outp = 1;
    double twon = double(2*N);

    //n*(n-1)..(n-2k+1)*(2k-1)..3.1/(2k)!/(2N)**k
    for (long i=0;i<2*k;i++) {
        outp*=double(n-i);
        if (i%2==1) 
    	    outp/=double(i+1)*twon;
    }
    for (long i=n-k-1;i>0;i--){
        outp*=1-double(i)/twon;
    }
    return outp;
}

extern "C"
double collprob(long k, long n, long N)
{
    if (n > gl_nmax)
    	gl_setnmax(n);
    gl_setN(N);
    return collprob_opt(k, n);
}


/*Inputs:
 *n - sample size
 *output - array of doubles of size n+1
 *N - array of diploid population sizes of length maxgens
 *maxgens - max generations before algorithm should halt.
 *tol - when (1-output[0]+output[1]) < tol, the algorithm will halt.
 */
extern "C"
void onlydouble(long n, double* output, long* N, long maxgens, double tol)
{
    double * lastgen = new double[n+1];
    double * nextgen = new double[n+1];
    double * tmp = 0;
    gl_setnmax(n);
    for (long i=0;i<n+1;i++)
        lastgen[i]=0;
    lastgen[n]=1;
    for (long i=0;i<maxgens;i++) {
        gl_setN(N[i]);
        for (long k=1;k<n+1;k++) {
            nextgen[k]=0;
            for (long l=k;l<k+2;l++) {
                if (l>n) continue; // Can't get mass from lastgen[n+1]
                if (l==1) {
                    nextgen[1]=lastgen[1];
                    continue;
                }
                if (lastgen[l]< ZERO_TOL &&gl_optflag) continue;
                nextgen[k]+=lastgen[l]*collprob_opt(l-k,l);
            }
        }
        nextgen[0]=1;
        for (long j=1;j<n+1;j++)
            nextgen[0]-=nextgen[j];
        
        tmp = nextgen;
        nextgen=lastgen;
        lastgen=tmp;
        if ((1-lastgen[0]-lastgen[1])<tol){
            for (long j=0;j<n+1;j++)
                output[j]=lastgen[j];
            delete lastgen;
            delete nextgen;
            dealloc();
            //cout<<"Finished on generation "<<i<<endl;
            return;
        }
    }
    cerr<<"Did not reach tolerance"<<endl;
    for (long j=0;j<n+1;j++)
        output[j]=lastgen[j];
    delete lastgen;
    delete nextgen;
    dealloc();
    return;
}

extern "C"
void notriple(long n, double* output, long* N, long maxgens, double tol)
{
    double * lastgen = new double[n+1];
    double * nextgen = new double[n+1];
    double * tmp = 0;
    gl_setnmax(n);
    for (long i=0;i<n+1;i++)
        lastgen[i]=0;
    lastgen[n]=1;
    for (long i=0;i<maxgens;i++) {
        gl_setN(N[i]);
        for (long k=1;k<n+1;k++) {
            nextgen[k]=0;
            for (long l=k;l<n+1;l++) {
                if (l==1) {
                    nextgen[1]=lastgen[1];
                    continue;
                }
                if (lastgen[l]< ZERO_TOL &&gl_optflag) continue;
                nextgen[k]+=lastgen[l]*collprob_opt(l-k,l);
            }
        }
        nextgen[0]=1;
        for (long j=1;j<n+1;j++)
            nextgen[0]-=nextgen[j];
        
        tmp = nextgen;
        nextgen=lastgen;
        lastgen=tmp;
        if ((1-lastgen[0]-lastgen[1])<tol){
            for (long j=0;j<n+1;j++)
                output[j]=lastgen[j];
            delete lastgen;
            delete nextgen;
            dealloc();
            //cout<<"Finished on generation "<<i<<endl;
            return;
        }
    }
    cerr<<"Did not reach tolerance"<<endl;
    for (long j=0;j<n+1;j++)
        output[j]=lastgen[j];
    delete lastgen;
    delete nextgen;
    dealloc();
    return;
}
