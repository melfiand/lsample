import ctypes
import numpy as np
import os
import time

from ctypes import c_double, c_int64
from numpy.ctypeslib import ndpointer

dblptr = ndpointer(c_double, flags='C_CONTIGUOUS')
intptr = ndpointer(c_int64, flags='C_CONTIGUOUS')

c_onlydouble = None
c_notriple = None
c_test = None

def init():
    global c_onlydouble, c_notriple, c_test

    pth = os.path.abspath(__file__)
    fname = os.path.join(os.path.dirname(pth),'c_simm.so')
    c_simm = ctypes.cdll.LoadLibrary(fname)
    
    c_onlydouble = c_simm.onlydouble
    c_onlydouble.restype = None
    c_onlydouble.argtypes = [c_int64, dblptr, intptr, c_int64, c_double]

    c_notriple = c_simm.notriple
    c_notriple.restype = None
    c_notriple.argtypes = [c_int64, dblptr, intptr, c_int64, c_double]

    c_test = c_simm.test
    c_test.restype = None
    c_test.argtypes = None

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
def test():
    c_test()
