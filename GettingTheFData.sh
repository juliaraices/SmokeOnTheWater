#!/bin/bash
#
#SBATCH --job-name="CORE COURSE getting ALL THE DATA! o/" # job name
#SBATCH --time=96:00:00 #maximum runtime
#SBATCH --mem=10G #maximum memmory allocation
#SBATCH --mail-user=julia.raices@ist.ac.at #send e-mail to user for everything
#SBATCH --mail-type=ALL

# loads module from which raw data should be dowloaded
export OMP_NUM_THREADS=1 # this makes it use only one thread
module load SRA-Toolkit/2.8.1-3 # this is for it to know were to get the data from

# downloads reads for each experiment/sample
# when we have paired end file we say "--split-files" so the program knows it has paired end data. If we don't have paired end, just don't use that command =)
## [mouse | ref 8] Gompers et al 2017
### RNA-seq Heterozygous P56 adult 
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629564
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629565
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629566
### RNA-seq WT (Wild Type) P56 adult
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629561
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629562
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629563
### RNA-seq Het (Heterozygous) P0.Chd8
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629555
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629556
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629557
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629558
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629559
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629560
### RNA-seq WT P0.Chd8
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629550
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629551
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629552
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629553
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629554
### RNA-seq Het e17.5
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629543
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629544
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629545
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629546
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629547
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629548
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629549
### RNA-seq WT e17.5
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629540
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629541
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629542
### RNA-seq Het e14.5
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629534
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629535
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629536
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629537
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629538
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629539
### RNA-seq WT e14.5
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629531
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629532
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629533
### RNA-seq Het e12.5
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5629527
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5629528
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5629529
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5629530
### RNA-seq 
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629519
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629520
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629521
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629522
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629523
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629524
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629525
srun --cpu_bind=verbose fastq-dump --skip-technical --readids SRR5629526
## [mouse | ref 10] Katayama et al 2016 -> theoretically it is available, but it's impossible to find 
## [mouse | ref 14] Nishiyama et al 2009 -> no available raw data (for more information Jules has a nice resume of all we have
## [mouse | ref 16] Platt et al 2017
### RNA-seq NAc WT replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350401
### RNA-seq NAc WT replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350400
### RNA-seq NAc WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350399
### RNA-seq NAc Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350398
### RNA-seq NAc Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350397
### RNA-seq NAc Het replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350396
### RNA-seq DS WT replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350395
### RNA-seq DS WT replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350394
### RNA-seq DS WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350393
### RNA-seq DS WT replicate 4
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350392
### RNA-seq DS Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350391
### RNA-seq DS Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350390
### RNA-seq DS Het replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350389
### RNA-seq CC WT replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350388
### RNA-seq CC WT replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350387
### RNA-seq CC WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350386
### RNA-seq CC Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350385
### RNA-seq CC Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350384
### RNA-seq CC Het replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350383
### RNA-seq CC Het replicate 4
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350382
### RNA-seq HPF WT replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350381
### RNA-seq HPF WT replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350380
### RNA-seq HPF WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350379
### RNA-seq HPF WT replicate 4
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350378
### RNA-seq HPF Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350377
### RNA-seq HPF Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350376
### RNA-seq HPF replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350375
### RNA-seq AM WT replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350374
### RNA-seq AM WT replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350373
### RNA-seq AM WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350372
### RNA-seq AM WT replicate 4
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350371
### RNA-seq AM Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350370
### RNA-seq AM Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350369
### RNA-seq AM Het replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350368
### RNA-seq LH WT replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350367
### RNA-seq LH WT replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350366
### RNA-seq LH WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350365
### RNA-seq LH Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350364
### RNA-seq LH Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350363
### RNA-seq LH Het replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350362
### RNA-seq LH Het replicate 4
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350361
### RNA-seq VTA WT replicate 2 -> there's no replicate 1 btw
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350360
### RNA-seq VTA WT replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350359
### RNA-seq VTA WT replicate 4
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350358
### RNA-seq VTA Het replicate 1
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350357
### RNA-seq VTA Het replicate 2
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350356
### RNA-seq VTA Het replicate 3
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR5350355
## [human | ref 19] Wang et al 2017
### RNA-seq CHD8+/+ A
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017382
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017383
### RNA-seq CHD8+/+ B
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017384
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017385
### RNA-seq CHD8+/- A
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017387
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017386
### RNA-seq CHD8+/- B
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017388
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017389
### RNA-seq CHD8+/- C
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017391
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017390
### RNA-seq CHD8+/- D
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017393
srun --cpu_bind=verbose fastq-dump --skip-technical --readids --split-files SRR4017392


# to get to the SRR number you should: find the SRP number and search for it at www.ncbi.nlm.gov/sra and get it for each experiment run | find the GEO acession number and look for it in the same website, get numbers for each run
