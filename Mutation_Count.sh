#!/bin/bash

#-p : processors
#-r : Sorted bam files are provided
#-f : Path to fasta file containing the refrence transcript
#-m : count mutations instead of looking for RT stops
#-na : Ignores ambiguously mapped deletions
#-md <int> : ignores deletions longer than the interger



rf-count -p 3 -r -f HIV.fasta -m -na -md 200 rf_map/Denatured.bam rf_map/1M7.bam rf_map/Untreated.bam
