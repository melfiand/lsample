from . import simm
import numpy as np

def Constpopmodel(n):
    Nlen=10000000
    effpop=10000
    tol = .01
    N=np.zeros(Nlen,dtype=np.int64)
    for i in range(Nlen):
        N[i]=effpop

    print('\n'+'-'*80)
    print('For constant effective population size with')
    print('N = {}  and n = {}:'.format(effpop,n))
    coal, fail = simm.onlydouble(n,N,tol,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nOnly Single Doubles:')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))

    coal, fail = simm.notriple(n,N,tol,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nOnly Doubles (no triples):')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))
    print('-'*80+'\n')

def Dualbottleneck(n):
    tol = .01
    Nlen=10000000
    effpop=10000
    bottle1=[620,720]
    bottlepop1=1000
    bottle2=[4620,4720]
    bottlepop2=700

    N=np.zeros(Nlen,dtype=np.int64)
    for i in range(Nlen):
        N[i]=effpop
    for i in range(bottle1[0],bottle1[1]):
        N[i]=bottlepop1
    for i in range(bottle2[0],bottle2[1]):
        N[i]=bottlepop2
    
    print('\n'+'-'*80)
    print('For two bottlenecks')
    print('From {} to {}, effpop={}.'.format(bottle1[0],bottle1[1],bottlepop1))
    print('From {} to {}, effpop={}.'.format(bottle2[0],bottle2[1],bottlepop2))
    print('Otherwise, N = {}  and n = {}:'.format(effpop,n))
    coal, fail = simm.onlydouble(n,N,tol,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nOnly Single Doubles:')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))

    coal, fail = simm.notriple(n,N,tol,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nOnly Doubles (no triples):')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))
    print('-'*80+'\n')

def Expdecay1(n):
    tol = .01
    Nlen=10000000
    startpop=10000
    expdecayend=920
    mindecaypop=1000
    afterdecaypop=3000
    jump1time=2000
    jump1pop=10000
    jump2time=6000
    jump2pop=5000

    decayrate=(mindecaypop/startpop)**(1/expdecayend)

    N=np.zeros(Nlen,dtype=np.int64)
    for i in range(expdecayend):
        N[i]=startpop*decayrate**i
    for i in range(expdecayend,jump1time):
        N[i]=afterdecaypop
    for i in range(jump1time,jump2time):
        N[i]=jump1pop
    for i in range(jump2time,Nlen):
        N[i]=jump2pop


    print('\n'+'-'*80)
    print('For exponential decay')
    print('From 0 to {} gens, effpop exp decays from {} to {}'.format(expdecayend,startpop,mindecaypop))
    print('From {} to {} gens, effpop = {}'.format(expdecayend,jump1time,afterdecaypop))
    print('At {} gens, effpop jumps to {}'.format(jump1time,jump1pop))
    print('After {} gens, effpop stays at {}\n'.format(jump2time,jump2pop))

    coal, fail = simm.onlydouble(n,N,tol,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nOnly Single Doubles:')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))

    coal, fail = simm.notriple(n,N,tol,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nOnly Doubles (no triples):')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))
    print('-'*80+'\n')

if __name__ == '__main__':
    #simm.test_collprob()
    Constpopmodel(100)
    Dualbottleneck(100)
    Expdecay1(100)
