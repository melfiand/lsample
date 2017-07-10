from . import simm
import numpy as np

def BKSModel1():
    n=40
    Nlen=1000000
    tol = .01
    N=np.zeros(Nlen,dtype=np.int64)
    for i in range(Nlen):
        N[i]=10000
    coal, fail = simm.onlydouble(n,N,tol,timer=True)
    print('{} coalesced with no multi doubles'.format(coal/(coal+fail)))
    print('And {} coalesced with at least one multi double.'.format(fail/(coal+fail)))

    coal, fail = simm.notriple(n,N,tol,timer=True)
    print('{} coalesced with no triples'.format(coal/(coal+fail)))
    print('And {} coalesced with at least one triple.'.format(fail/(coal+fail)))

if __name__ == '__main__':
    #simm.test()
    BKSModel1()
