import ctypes
import numpy as np
import os
import time

from ctypes import c_double, c_int64
from numpy.ctypeslib import ndpointer

dblptr = ndpointer(c_double, flags='C_CONTIGUOUS')
intptr = ndpointer(c_int64, flags='C_CONTIGUOUS')

c_collprob = None
c_onlydouble = None
c_notriple = None

def init():
    global c_collprob, c_onlydouble, c_notriple

    pth = os.path.abspath(__file__)
    fname = os.path.join(os.path.dirname(pth),'c_simm.so')
    c_simm = ctypes.cdll.LoadLibrary(fname)

    c_collprob = c_simm.collprob
    c_collprob.restype = c_double
    c_collprob.argtypes = [c_int64, c_int64, c_int64]

    c_onlydouble = c_simm.onlydouble
    c_onlydouble.restype = None
    c_onlydouble.argtypes = [c_int64, dblptr, intptr, c_int64, c_double]

    c_notriple = c_simm.notriple
    c_notriple.restype = None
    c_notriple.argtypes = [c_int64, dblptr, intptr, c_int64, c_double]

init()

def onlydouble(n,N,tol,timer=False):
    outpt = np.zeros(n+1,dtype=float)
    t1=time.time()
    c_onlydouble(n,outpt,N,len(N),tol)
    totaltime =time.time()-t1
    if (timer==True):
        print('Time elapsed: '+str(totaltime)+' s.')
    return outpt[1], outpt[0]

def notriple(n,N,tol,timer=False):
    outpt = np.zeros(n+1,dtype=float)
    t1=time.time()
    c_notriple(n,outpt,N,len(N),tol)
    totaltime=time.time()-t1
    if (timer==True):
        print('Time elapsed: '+str(totaltime)+' s.')
    return outpt[1], outpt[0]


def test_collprob():
    #Birthday problem
    print('-'*80)
    print('Test against bday problem')
    print('-'*80)
    def bday(n, N):
        N = 2*N
        p = 1.0
        for i in range(n):
            p *= (1-i/N)
        return 1-p


    N = int(365/2)
    print('{0:>10} {1:^20} {2:^20}'.format('#persons',
                                           'shared/no triple',
                                           'shared bday'))
    for n in range(15, 36):
        p = 0.0
        for k in range(1, int(n/2)):
            p += c_collprob(k, n, N)
        print('{0:>10} {1:^20.2f} {2:^20.2f}'.format(n,
                                                     p,
                                                     bday(n, N)))
    def collp(k, n, N):
        import scipy.special
        ans = float(scipy.special.binom(n, 2*k))
        ans /= (2*N)**k
        for i in range(n-k):
            ans *= (1-i/(2*N))
        for i in range(k):
            ans *= (2*i+1)
        return ans

    print('\n')
    print('-'*80)
    print('Test of specific cases')
    print('-'*80)
    ks = [0, 1, 2, 6,
          0, 1, 7, 9,
          0, 1, 10, 11]
    ns = [12, 12, 12, 12,
          18, 18, 18, 18,
          22, 22, 22, 22]
    N = 50
    print('{0:^10}{1:^10}{2:>20}{3:>20}'.format('n',
                                                'k',
                                                'coll prob',
                                                'rel error'))
    for k, n in zip(ks, ns):
        p1, p2 = (c_collprob(k, n, N), collp(k, n, N))
        print('{0:^10}{1:^10}{2:>20.2e}{3:>20.2e}'.format(k,
                                                          n,
                                                          p1,
                                                          abs(p1-p2)/abs(p2)))
    print('\n')
    print('-'*80)
    print('Test large N, n, and k')
    print('-'*80)
    Ns = [1000*1000, 1000*1000, 1000*1000,
          1000*1000*1000, 1000*1000*1000, 1000*1000*1000,
          1000*1000*1000*10, 1000*1000*1000*10, 1000*1000*1000*10]
    ns = [10, 100, 10000,
          10, 100, 10000,
          10, 100, 10000]
    for n, N in zip(ns, Ns):
        for k in range(1,4):
            print('{0:^10}{1:<12}{2:<20}{3:>20.2e}'.format(k,
                                                           n,
                                                           N,
                                                           c_collprob(k, n, N)))
    
