#include <omp.h>
#include <iostream>

using namespace std;

double collprob(int k, int n, int N)
{
    double outp = 1;
    double twon = double(2*N);
    for (int i=0;i<2*k;i++) {
        outp*=double(n-i);
        if (i%2==1)
            outp/=double(i+1)*twon;
        // Divides by 2N k times, and only by even parts of 2k!
    }
    for (int i=n-k-1;i>0;i--)
        outp*=1-double(i)/twon;
    return outp;
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
    for (int i=0;i<n+1;i++)
        lastgen[i]=0;
    lastgen[n]=1;
    for (int i=0;i<maxgens;i++) {
        for (int k=1;k<n+1;k++) {
            nextgen[k]=0;
            for (int l=k;l<k+2;l++) {
                if (l>n) continue; // Can't get mass from lastgen[n+1]
                if (l==1) {
                    nextgen[1]=lastgen[1];
                    continue;
                }
                nextgen[k]+=lastgen[l]*collprob(l-k,l,N[i]);
            }
        }
        nextgen[0]=1;
        for (int j=1;j<n+1;j++)
            nextgen[0]-=nextgen[j];
        
        tmp = nextgen;
        nextgen=lastgen;
        lastgen=tmp;
        if ((1-lastgen[0]-lastgen[1])<tol){
            for (int j=0;j<n+1;j++)
                output[j]=lastgen[j];
            delete lastgen;
            delete nextgen;
            cout<<"Finished on generation "<<i<<endl;
            return;
        }
    }
    cerr<<"Did not reach tolerance"<<endl;
    for (int j=0;j<n+1;j++)
        output[j]=lastgen[j];
    delete lastgen;
    delete nextgen;
    return;
}

extern "C"
void notriple(long n, double* output, long* N, long maxgens, double tol)
{
    double * lastgen = new double[n+1];
    double * nextgen = new double[n+1];
    double * tmp = 0;
    for (int i=0;i<n+1;i++)
        lastgen[i]=0;
    lastgen[n]=1;
    for (int i=0;i<maxgens;i++) {
        for (int k=1;k<n+1;k++) {
            nextgen[k]=0;
            for (int l=k;l<n+1;l++) {
                if (l==1) {
                    nextgen[1]=lastgen[1];
                    continue;
                }
                nextgen[k]+=lastgen[l]*collprob(l-k,l,N[i]);
            }
        }
        nextgen[0]=1;
        for (int j=1;j<n+1;j++)
            nextgen[0]-=nextgen[j];
        
        tmp = nextgen;
        nextgen=lastgen;
        lastgen=tmp;
        if ((1-lastgen[0]-lastgen[1])<tol){
            for (int j=0;j<n+1;j++)
                output[j]=lastgen[j];
            delete lastgen;
            delete nextgen;
            cout<<"Finished on generation "<<i<<endl;
            return;
        }
    }
    cerr<<"Did not reach tolerance"<<endl;
    for (int j=0;j<n+1;j++)
        output[j]=lastgen[j];
    delete lastgen;
    delete nextgen;
    return;
}

extern "C"
void test()
{
    cout<<collprob(1,6,11)<<endl;
    return;
}

