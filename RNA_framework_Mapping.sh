#!/bin/bash
# -b2 -> Bowtie2 for read mapping
# -p -> processors
# -cqo -> cutadapt quality only
# -cq5 <int> -> cutadapt quality trimming 5' end. <int> is phred score
# -bl <int> -> bowtie2 seed length
# -bN (0 or 1) -> bowtie seed mismatchese
# -bD -> maximum number of seed extenstion attempts
# -bR -> maximum number of re-seeding attempts
# -bdp -> number of extra refrences bases included on DP table
# -bmp -> maximum and minimum mismatch penalties

#t



rf-map -p 3 -b2 -cqo -cq5 20 -bs -bl 15 -bN 1 -bD 20 -bR 3 -bdp 100 -bma 2 -bmp 6,2 -bdg 5,1 -bfg 5,1 -bd \
-mp "--maxins 200" -bi HIV Denatured_R1.fastq,Denatured_R2.fastq 1M7_R1.fastq,1M7_R2.fastq \
Untreated_R1.fastq,Untreated_R1.fastq
