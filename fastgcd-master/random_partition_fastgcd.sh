#!/bin/bash

# Randomly Split full dataset into 2,4,8,16 & 32 partitions 
# + and compute the batchwise GCD on them
# Results will be stored in (partition.iteration) folder
# + eg : 2.4/ means 2-partition scheme and 4th iteration 

for i in `seq 1 9`;
do

	shuf dataset > f
	split -l 976743 f f2.

	./fastgcd f2.aa
	mv vulnerable_moduli f2.aa.vulnerable_moduli
	mv gcds f2.aa.gcds
	./fastgcd f2.ab
	mv vulnerable_moduli f2.ab.vulnerable_moduli
	mv gcds f2.ab.gcds
	
	mkdir 2.$i 
	mv f2.*.vulnerable_moduli 2.$i
	mv f2.*.gcds 2.$i
done

for i in `seq 1 9`;
do

	shuf dataset > f
	split -l 488371 f f4.

	./fastgcd f4.aa
	mv vulnerable_moduli f4.aa.vulnerable_moduli
	mv gcds f4.aa.gcds
	./fastgcd f4.ab
	mv vulnerable_moduli f4.ab.vulnerable_moduli
	mv gcds f4.ab.gcds
	./fastgcd f4.ac
	mv vulnerable_moduli f4.ac.vulnerable_moduli
	mv gcds f4.ac.gcds
	./fastgcd f4.ad
	mv vulnerable_moduli f4.ad.vulnerable_moduli
	mv gcds f4.ad.gcds
	
	mkdir 4.$i 
	mv f4.*.vulnerable_moduli 4.$i
	mv f4.*.gcds 4.$i
done

for i in `seq 1 9`;
do

	shuf dataset > f
	split -l 244185 f f8.

    ./fastgcd f8.aa
    mv vulnerable_moduli f8.aa.vulnerable_moduli
    mv gcds f8.aa.gcds
    ./fastgcd f8.ab
    mv vulnerable_moduli f8.ab.vulnerable_moduli
    mv gcds f8.ab.gcds
    ./fastgcd f8.ac
    mv vulnerable_moduli f8.ac.vulnerable_moduli
    mv gcds f8.ac.gcds
    ./fastgcd f8.ad
    mv vulnerable_moduli f8.ad.vulnerable_moduli
    mv gcds f8.ad.gcds
    ./fastgcd f8.ae
    mv vulnerable_moduli f8.ae.vulnerable_moduli
    mv gcds f8.ae.gcds
    ./fastgcd f8.af
    mv vulnerable_moduli f8.af.vulnerable_moduli
    mv gcds f8.af.gcds
    ./fastgcd f8.ag
    mv vulnerable_moduli f8.ag.vulnerable_moduli
    mv gcds f8.ag.gcds
    ./fastgcd f8.ah
    mv vulnerable_moduli f8.ah.vulnerable_moduli
    mv gcds f8.ah.gcds

	mkdir 8.$i 
	mv f8.*.vulnerable_moduli 8.$i
	mv f8.*.gcds 8.$i
done



for i in `seq 1 9`;
do

	shuf dataset > f
	split -l 122092 f f16.

	./fastgcd f16.aa
    mv vulnerable_moduli f16.aa.vulnerable_moduli
    mv gcds f16.aa.gcds
    ./fastgcd f16.ab
    mv vulnerable_moduli f16.ab.vulnerable_moduli
    mv gcds f16.ab.gcds
    ./fastgcd f16.ac
    mv vulnerable_moduli f16.ac.vulnerable_moduli
    mv gcds f16.ac.gcds
    ./fastgcd f16.ad
    mv vulnerable_moduli f16.ad.vulnerable_moduli
    mv gcds f16.ad.gcds
    ./fastgcd f16.ae
    mv vulnerable_moduli f16.ae.vulnerable_moduli
    mv gcds f16.ae.gcds
    ./fastgcd f16.af
    mv vulnerable_moduli f16.af.vulnerable_moduli
    mv gcds f16.af.gcds
    ./fastgcd f16.ag
    mv vulnerable_moduli f16.ag.vulnerable_moduli
    mv gcds f16.ag.gcds
    ./fastgcd f16.ah
    mv vulnerable_moduli f16.ah.vulnerable_moduli
    mv gcds f16.ah.gcds
    ./fastgcd f16.ai
    mv vulnerable_moduli f16.ai.vulnerable_moduli
    mv gcds f16.ai.gcds
    ./fastgcd f16.aj
    mv vulnerable_moduli f16.aj.vulnerable_moduli
    mv gcds f16.aj.gcds
    ./fastgcd f16.ak
    mv vulnerable_moduli f16.ak.vulnerable_moduli
    mv gcds f16.ak.gcds
    ./fastgcd f16.al
    mv vulnerable_moduli f16.al.vulnerable_moduli
    mv gcds f16.al.gcds
    ./fastgcd f16.am
    mv vulnerable_moduli f16.am.vulnerable_moduli
    mv gcds f16.am.gcds
    ./fastgcd f16.an
    mv vulnerable_moduli f16.an.vulnerable_moduli
    mv gcds f16.an.gcds
    ./fastgcd f16.ao
    mv vulnerable_moduli f16.ao.vulnerable_moduli
    mv gcds f16.ao.gcds
    ./fastgcd f16.ap
    mv vulnerable_moduli f16.ap.vulnerable_moduli
    mv gcds f16.ap.gcds

	mkdir 16.$i 
	mv f16.*.vulnerable_moduli 16.$i
	mv f16.*.gcds 16.$i
done


for i in `seq 1 9`;
do

	shuf dataset > f
	split -l 61046 f f32.

	./fastgcd f32.aa
	mv vulnerable_moduli f32.aa.vulnerable_moduli
	mv gcds f32.aa.gcds
	./fastgcd f32.ab
	mv vulnerable_moduli f32.ab.vulnerable_moduli
	mv gcds f32.ab.gcds
	./fastgcd f32.ac
	mv vulnerable_moduli f32.ac.vulnerable_moduli
	mv gcds f32.ac.gcds
	./fastgcd f32.ad
	mv vulnerable_moduli f32.ad.vulnerable_moduli
	mv gcds f32.ad.gcds
	./fastgcd f32.ae
	mv vulnerable_moduli f32.ae.vulnerable_moduli
	mv gcds f32.ae.gcds
	./fastgcd f32.af
	mv vulnerable_moduli f32.af.vulnerable_moduli
	mv gcds f32.af.gcds
	./fastgcd f32.ag
	mv vulnerable_moduli f32.ag.vulnerable_moduli
	mv gcds f32.ag.gcds
	./fastgcd f32.ah
	mv vulnerable_moduli f32.ah.vulnerable_moduli
	mv gcds f32.ah.gcds
	./fastgcd f32.ai
	mv vulnerable_moduli f32.ai.vulnerable_moduli
	mv gcds f32.ai.gcds
	./fastgcd f32.aj
	mv vulnerable_moduli f32.aj.vulnerable_moduli
	mv gcds f32.aj.gcds
	./fastgcd f32.ak
	mv vulnerable_moduli f32.ak.vulnerable_moduli
	mv gcds f32.ak.gcds
	./fastgcd f32.al
	mv vulnerable_moduli f32.al.vulnerable_moduli
	mv gcds f32.al.gcds
	./fastgcd f32.am
	mv vulnerable_moduli f32.am.vulnerable_moduli
	mv gcds f32.am.gcds
	./fastgcd f32.an
	mv vulnerable_moduli f32.an.vulnerable_moduli
	mv gcds f32.an.gcds
	./fastgcd f32.ao
	mv vulnerable_moduli f32.ao.vulnerable_moduli
	mv gcds f32.ao.gcds
	./fastgcd f32.ap
	mv vulnerable_moduli f32.ap.vulnerable_moduli
	mv gcds f32.ap.gcds
	./fastgcd f32.aq
	mv vulnerable_moduli f32.aq.vulnerable_moduli
	mv gcds f32.aq.gcds
	./fastgcd f32.ar
	mv vulnerable_moduli f32.ar.vulnerable_moduli
	mv gcds f32.ar.gcds
	./fastgcd f32.as
	mv vulnerable_moduli f32.as.vulnerable_moduli
	mv gcds f32.as.gcds
	./fastgcd f32.at
	mv vulnerable_moduli f32.at.vulnerable_moduli
	mv gcds f32.at.gcds
	./fastgcd f32.au
	mv vulnerable_moduli f32.au.vulnerable_moduli
	mv gcds f32.au.gcds
	./fastgcd f32.av
	mv vulnerable_moduli f32.av.vulnerable_moduli
	mv gcds f32.av.gcds
	./fastgcd f32.aw
	mv vulnerable_moduli f32.aw.vulnerable_moduli
	mv gcds f32.aw.gcds
	./fastgcd f32.ax
	mv vulnerable_moduli f32.ax.vulnerable_moduli
	mv gcds f32.ax.gcds
	./fastgcd f32.ay
	mv vulnerable_moduli f32.ay.vulnerable_moduli
	mv gcds f32.ay.gcds
	./fastgcd f32.az
	mv vulnerable_moduli f32.az.vulnerable_moduli
	mv gcds f32.az.gcds
	./fastgcd f32.ba
	mv vulnerable_moduli f32.ba.vulnerable_moduli
	mv gcds f32.ba.gcds
	./fastgcd f32.bb
	mv vulnerable_moduli f32.bb.vulnerable_moduli
	mv gcds f32.bb.gcds
	./fastgcd f32.bc
	mv vulnerable_moduli f32.bc.vulnerable_moduli
	mv gcds f32.bc.gcds
	./fastgcd f32.bd
	mv vulnerable_moduli f32.bd.vulnerable_moduli
	mv gcds f32.bd.gcds
	./fastgcd f32.be
	mv vulnerable_moduli f32.be.vulnerable_moduli
	mv gcds f32.be.gcds
	./fastgcd f32.bf
	mv vulnerable_moduli f32.bf.vulnerable_moduli
	mv gcds f32.bf.gcds

	mkdir 32.$i 
	mv f32.*.vulnerable_moduli 32.$i
	mv f32.*.gcds 32.$i
done

