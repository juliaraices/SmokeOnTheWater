#!/bin/bash
#
#SBATCH --job-name="Making expression files" # job name
#SBATCH --time=96:00:00 #maximum runtime
#SBATCH --mem=50G #maximum memmory allocation
#SBATCH --mail-user=julia.raices@ist.ac.at #send e-mail to user for everything
#SBATCH --mail-type=ALL
# loads module from which raw data should be dowloaded
export OMP_NUM_THREADS=5 # this makes it usefive threads

# Making genome indexes
## humnan
srun --cpu_bind=verbose rm -r Human/
srun --cpu_bind=verbose mkdir Human
srun --cpu_bind=verbose ./STAR/source/STAR --runThreadN 5 --runMode genomeGenerate --genomeDir Human --genomeFastaFiles hg38.fa --sjdbGTFfile humanano.gtf --sjdbOverhang 100
## mouse
srun --cpu_bind=verbose rm -r Mouse/
srun --cpu_bind=verbose mkdir Mouse
srun --cpu_bind=verbose ./STAR/source/STAR --runThreadN 5 --runMode genomeGenerate --genomeDir Mouse --genomeFastaFiles Mus_musculus.GRCm38.dna.chromosome.1.fa Mus_musculus.GRCm38.dna.chromosome.2.fa Mus_musculus.GRCm38.dna.chromosome.3.fa Mus_musculus.GRCm38.dna.chromosome.4.fa Mus_musculus.GRCm38.dna.chromosome.5.fa Mus_musculus.GRCm38.dna.chromosome.6.fa Mus_musculus.GRCm38.dna.chromosome.7.fa Mus_musculus.GRCm38.dna.chromosome.8.fa Mus_musculus.GRCm38.dna.chromosome.9.fa Mus_musculus.GRCm38.dna.chromosome.10.fa Mus_musculus.GRCm38.dna.chromosome.11.fa Mus_musculus.GRCm38.dna.chromosome.12.fa Mus_musculus.GRCm38.dna.chromosome.13.fa Mus_musculus.GRCm38.dna.chromosome.14.fa Mus_musculus.GRCm38.dna.chromosome.15.fa Mus_musculus.GRCm38.dna.chromosome.16.fa Mus_musculus.GRCm38.dna.chromosome.17.fa Mus_musculus.GRCm38.dna.chromosome.18.fa Mus_musculus.GRCm38.dna.chromosome.19.fa Mus_musculus.GRCm38.dna.chromosome.X.fa Mus_musculus.GRCm38.dna.chromosome.Y.fa --sjdbGTFfile Mus_musculus.GRCm38.91.gtf --sjdbOverhang 100

