from . import simm
import numpy as np
from matplotlib import pyplot as plt
import math
import os
import time
import pickle

class Constpopmodel:
    def __init__(self):
        self.Nlen=10000000
        self.effpop=10000
        
    def set_effpop(self, effpop):
        self.effpop=effpop

    def N(self):
        N=np.zeros(self.Nlen,dtype=np.int64)
        for i in range(self.Nlen):
            N[i]=self.effpop
        return N

    def announce(self):
        print('Constant population model:')
        print(' N = {}.'.format(self.effpop))

class Dualbottleneck:
    def __init__(self):
        self.Nlen=10000000
        self.effpop=10000
        self.bottlepop1=1000
        self.bottlepop2=700
        self.bottletimes1=[620,720]
        self.bottletimes2=[4620,4720]

    def N(self):
        N=np.zeros(self.Nlen,dtype=np.int64)
        for i in range(self.Nlen):
            N[i]=self.effpop
        for i in range(self.bottletimes1[0],self.bottletimes2[1]):
            N[i]=self.bottlepop1
        for i in range(self.bottletimes2[0],self.bottletimes2[1]):
            N[i]=self.bottlepop2
        return N

    def announce(self):
        print('Dual bottleneck model:')
        print('From {} to {} gens, effpop = {}.'.format(self.bottletimes1[0],self.bottletimes1[1],self.bottlepop1))
        print('From {} to {} gens, effpop = {}.'.format(self.bottletimes2[0],self.bottletimes2[1],self.bottlepop2))
        print('At all other times, effpop = {}.'.format(self.effpop))

class Expdecay1:
    def __init__(self):
        self.Nlen=10000000
        self.startpop=10000
        self.mindecaypop=1000
        self.afterdecaypop=3000
        self.jump1pop=10000
        self.jump2pop=5000

        self.decayendtime=920
        self.jump1time=2000
        self.jump2time=6000

    def N(self):
        decayrate=(self.mindecaypop/self.startpop)**(1/self.decayendtime)
        N=np.zeros(self.Nlen,dtype=np.int64)
        for i in range(self.decayendtime):
            N[i]=self.startpop*decayrate**i
        for i in range(self.decayendtime,self.jump1time):
            N[i]=self.afterdecaypop
        for i in range(self.jump1time,self.jump2time):
            N[i]=self.jump1pop
        for i in range(self.jump2time,self.Nlen):
            N[i]=self.jump2pop
        return N

    def announce(self):
        print('Exponential decay model 1:')
        print('From 0 to {} gens, effpop decays from {} to {}.'.format(self.decayendtime,self.startpop,self.mindecaypop))
        print('From {} to {} gens, effpop = {}.'.format(self.decayendtime,self.jump1time,self.afterdecaypop))
        print('At {} gens, effpop jumps to {}.'.format(self.jump1time,self.jump1pop))
        print('After {} gens, effpop stays at {}.'.format(self.jump2time,self.jump2pop))

class Expdecay2:
    def __init__(self):
        self.Nlen=10000000
        self.startpop=100000
        self.mindecay1pop=10000
        self.mindecay2pop=1000
        self.afterdecaypop=3000
        self.jump1pop=10000
        self.jump2pop=5000

        self.decay1endtime=200
        self.decay2endtime=900
        self.jump1time=2000
        self.jump2time=6000

    def N(self):
        decayrate=(self.mindecay1pop/self.startpop)**(1/self.decay1endtime)
        decayrate2=(self.mindecay2pop/self.mindecay1pop)**(1/(self.decay2endtime-self.decay1endtime))
        N=np.zeros(self.Nlen,dtype=np.int64)
        for i in range(self.decay1endtime):
            N[i]=self.startpop*decayrate**i
        for i in range(self.decay1endtime,self.decay2endtime):
            N[i]=self.mindecay1pop*decayrate2**(i-self.decay1endtime)
        for i in range(self.decay2endtime,self.jump1time):
            N[i]=self.afterdecaypop
        for i in range(self.jump1time,self.jump2time):
            N[i]=self.jump1pop
        for i in range(self.jump2time,self.Nlen):
            N[i]=self.jump2pop
        return N

    def announce(self):
        print('Exponential decay model 2:')
        print('From 0 to {} gens, effpop decays from {} to {}.'.format(self.decay1endtime,self.startpop,self.mindecay1pop))
        print('From {} to {} gens, effpop decays from {} to {}.'.format(self.decay1endtime,self.decay2endtime,self.mindecay1pop,self.mindecay2pop))
        print('From {} to {} gens, effpop = {}.'.format(self.decay2endtime,self.jump1time,self.afterdecaypop))
        print('At {} gens, effpop jumps to {}.'.format(self.jump1time,self.jump1pop))
        print('After {} gens, effpop stays at {}.'.format(self.jump2time,self.jump2pop))

def one_run(n, Model):
    N=Model.N()
    coal, fail = simm.onlydouble(n,N,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    
    print('\n'+'-'*80)
    Model.announce()
    print('\nn = {}'.format(n))

    print('\nCoalesced with only single double collisions:')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))
    
    coal, fail = simm.notriple(n,N,timer=False)
    sccoal=coal/(coal+fail)
    scfail=fail/(coal+fail)
    print('\nCoalesced with only double collisions (no triples):')
    print('True    False')
    print('{0:7.5f} {1:7.5f}'.format(sccoal,scfail))
    print('-'*80)

def multirun(Ns,Model,plot=True):
    ns=np.asarray(Ns)
    N=Model.N()
    def plotrun(title,ns,ys):
        plt.figure()
        plt.plot(ns,ys)
        plt.title(title)
        plt.ylabel('True Proportion')
        plt.xlabel('Sample Size')
        plt.show()

    def printtable(ns,sccoal,scfail):
        print('\n'+' '*10+'True    False')
        for i in range(len(ns)):
            print('n = {0:4d}  {1:7.5f} {2:7.5f}'.format(ns[i],sccoal[i],scfail[i]))

    sccoal=np.zeros(len(ns))
    scfail=np.zeros(len(ns))
    i=0
    while(i<len(ns)):
        coal,fail = simm.onlydouble(ns[i],N)
        if (math.isnan(coal)):
            print('doub NaN warning')
            continue
        sccoal[i]=coal/(coal+fail)
        scfail[i]=fail/(coal+fail)
        i+=1
    
    print('\n'+'-'*80)
    Model.announce()
    print('\nCoalesced with only single double collisions:')
    printtable(ns,sccoal,scfail)
    if (plot):
        title='Coalesced with only single double collisions.'
        plotrun(title,ns,sccoal)

    i=0
    while(i<len(ns)):
        coal,fail = simm.notriple(ns[i],N)
        if (math.isnan(coal)):
            print('trip NaN warning')
            continue
        sccoal[i]=coal/(coal+fail)
        scfail[i]=fail/(coal+fail)
        i+=1
    print('\nCoalesced with no triple or worse collisions:')
    printtable(ns,sccoal,scfail)
    if (plot):
        title='Coalesced with no triple or worse collisions.'
        plotrun(title,ns,sccoal)

def nsearch_onlydouble(effpop,pval=.5):
    Nlen=10000000
    stepsize=64
    N = np.zeros(Nlen,dtype=np.int64)
    for i in range(Nlen):
        N[i]=effpop

    #print("N = {0:<10}".format(effpop))

    en = stepsize
    while en < effpop:
        coal,_ = simm.onlydouble(en,N,timer=False)
        if math.isnan(coal):
            continue
        #print("n = {0:<3}   coal = {1:5.3f}".format(en,coal))
        if (coal < pval):
            en-=stepsize
            break
        en+=stepsize

    stepsize=int(stepsize/2)
    en+=stepsize
    while True:
        coal,_ = simm.onlydouble(en,N,timer=False)
        if math.isnan(coal):
            continue
        #print("n = {0:<3}   coal = {1:5.3f}".format(en,coal))
        if stepsize==1:
            if coal<pval:
                return en
            else:
                return en+1
        else:
            stepsize=int(stepsize/2)
            if coal<pval:
                en-=stepsize
            else:
                en+=stepsize

def nsearch_notriple(effpop,pval=.5):
    Nlen=10000000
    stepsize=128
    N = np.zeros(Nlen,dtype=np.int64)
    for i in range(Nlen):
        N[i]=effpop

    #print("N = {0:<10}".format(effpop))

    en = stepsize
    while en < effpop:
        coal,_ = simm.notriple(en,N,timer=False)
        if math.isnan(coal):
            continue
        #print("n = {0:<3}   coal = {1:5.3f}".format(en,coal))
        if (coal < pval):
            en-=stepsize
            break
        en+=stepsize

    stepsize=int(stepsize/2)
    en+=stepsize
    while True:
        coal,_ = simm.notriple(en,N,timer=False)
        if math.isnan(coal):
            continue
        #print("n = {0:<3}   coal = {1:5.3f}".format(en,coal))
        if stepsize==1:
            if coal<pval:
                return en
            else:
                return en+1
        else:
            stepsize=int(stepsize/2)
            if coal<pval:
                en-=stepsize
            else:
                en+=stepsize

def nsearch_and_pickle(ens, filebase):
    Ns=np.asarray(ens)
    doub_ns=np.zeros(len(Ns))
    trip_ns=np.zeros(len(Ns))
    t1=time.time()
    for i,N in enumerate(Ns):
        doub_ns[i]=nsearch_onlydouble(N)
        trip_ns[i]=nsearch_notriple(N)
    print('Time elapsed: {}'.format(time.time()-t1))
    cdir=os.getcwd()
    pdir=os.path.join(cdir,'pickle')
    if not os.path.isdir(pdir):
        os.mkdir(pdir)
    ofile=os.path.join(pdir,filebase+'.pickle')
    fout = open(ofile,'wb')
    pickle.dump((Ns,doub_ns,trip_ns),fout)
    fout.close()

def unpickle_and_plot(filebase):
    ifile=os.path.join(os.cwd(),'pickle',filebase+'.pickle')
    if not os.path.isfile(ifile):
        print(ifile)
        print('Does not appear to exist.')
        return
    fin = open(ifile,'rb')
    Ns,doub_ns,trip_ns = pickle.load(fin)
    fin.close()

    plt.figure()
    plt.loglog(Ns,doub_ns)
    plt.title('50% Threshold for various effpop size (only single)')
    plt.ylabel('n')
    plt.xlabel('N (effpop)')
    plt.show()
    
    plt.figure()
    plt.loglog(Ns,trip_ns)
    plt.title('50% Threshold for various effpop size (no triple)')
    plt.ylabel('n')
    plt.xlabel('N (effpop)')
    plt.show()

if __name__ == '__main__':
    #simm.test_collprob()
    #one_run(n=100,Model=Constpopmodel())
    #one_run(n=100,Model=Dualbottleneck())
    #one_run(n=100,Model=Expdecay1())
    #one_run(n=100,Model=Expdecay2())
    """
    ns=[]
    for i in range(1,25):
        ns.append(int(i*20))
    multirun(ns,Model=Constpopmodel())
    """
    Ns=[]
    for i in range(1,20):
        Ns.append(int(5000+1000*i))
    nsearch_and_pickle(Ns,'testrun')
    #unpickle_and_plot('testrun')

    #n = nsearch_onlydouble(10000)
    #n = nsearch_notriple(10000)
