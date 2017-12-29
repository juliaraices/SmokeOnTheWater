#!/bin/bash
#
#SBATCH --job-name="CORE COURSE getting ALL THE DATA! o/" # job name
#SBATCH --time=96:00:00 #maximum runtime
#SBATCH --mem=10G #maximum memmory allocation
#SBATCH --mail-user=julia.raices@ist.ac.at #send e-mail to user for everything
#SBATCH --mail-type=ALL
# loads module from which raw data should be dowloaded
export OMP_NUM_THREADS=5 # this makes it usefive threads

# Making genome indexes
## humnan
srun --cpu_bind=verbose mkdir Human
srun --cpu_bind=verbose ./STAR/source/STAR --runThreadN 5 --runMode genomeGenerate --genomeDir Human --genomeFastaFiles hg38.fa --sjdbGTFfile humanano.gtf --sjdbOverhang 100
## mouse
srun --cpu_bind=verbose mkdir Mouse
srun --cpu_bind=verbose ./STAR/source/STAR --runThreadN 5 --runMode genomeGenerate --genomeDir Mouse --genomeFastaFiles Mus_musculus.GRCm38.dna.chromosome.1.fa Mus_musculus.GRCm38.dna.chromosome.2.fa Mus_musculus.GRCm38.dna.chromosome.3.fa Mus_musculus.GRCm38.dna.chromosome.4.fa Mus_musculus.GRCm38.dna.chromosome.5.fa Mus_musculus.GRCm38.dna.chromosome.6.fa Mus_musculus.GRCm38.dna.chromosome.7.fa Mus_musculus.GRCm38.dna.chromosome.8.fa Mus_musculus.GRCm38.dna.chromosome.9.fa Mus_musculus.GRCm38.dna.chromosome.10.fa Mus_musculus.GRCm38.dna.chromosome.11.fa Mus_musculus.GRCm38.dna.chromosome.12.fa Mus_musculus.GRCm38.dna.chromosome.13.fa Mus_musculus.GRCm38.dna.chromosome.14.fa Mus_musculus.GRCm38.dna.chromosome.15.fa Mus_musculus.GRCm38.dna.chromosome.16.fa Mus_musculus.GRCm38.dna.chromosome.17.fa Mus_musculus.GRCm38.dna.chromosome.18.fa Mus_musculus.GRCm38.dna.chromosome.19.fa Mus_musculus.GRCm38.dna.chromosome.X.fa Mus_musculus.GRCm38.dna.chromosome.Y.fa --sjdbGTFfile Mus_musculus.GRCm38.91.gtf --sjdbOverhang 100


#srun --cpu_bind=verbose ./STAR/source/STAR --runThread 5 --genomeDir --readFilesIn --outSAMtype BAM SortedByCoordinate --alignIntronMax 100000 --outFilterIntronMotifs RemoveNoncanonical --outFilterMultimapNmax 1 --quantMode GeneCounts


## [mouse | ref 8] Gompers et al 2017
srun --cpu_bind=verbose ./STAR/source/STAR --runThread 5 --genomeDir Mouse --readFilesIn Gompers2017 --outSAMtype BAM SortedByCoordinate --alignIntronMax 100000 --outFilterIntronMotifs RemoveNoncanonical --outFilterMultimapNmax 1 --quantMode GeneCounts
## [mouse | ref 10] Katayama et al 2016 -> theoretically it is available, but it's impossible to find 
## [mouse | ref 14] Nishiyama et al 2009 -> no available raw data (for more information Jules has a nice resume of all we have
## [mouse | ref 16] Platt et al 2017
srun --cpu_bind=verbose ./STAR/source/STAR --runThread 5 --genomeDir Mouse --readFilesIn Platt2017 --outSAMtype BAM SortedByCoordinate --alignIntronMax 100000 --outFilterIntronMotifs RemoveNoncanonical --outFilterMultimapNmax 1 --quantMode GeneCounts
## [human | ref 19] Wang et al 2017
srun --cpu_bind=verbose ./STAR/source/STAR --runThread 5 --genomeDir Mouse --readFilesIn Wang2017 --outSAMtype BAM SortedByCoordinate --alignIntronMax 100000 --outFilterIntronMotifs RemoveNoncanonical --outFilterMultimapNmax 1 --quantMode GeneCounts
