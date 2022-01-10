#!/bin/bash


#-t : path to the treated or moditifed sample
#-u : path to the unmodified sample
#-d : path to the denatured sample
#-i : path to the index
#-sm : Scoring method. See documentation for the appropriate methods
#-nm : Normalization method. See documentation for appropriate methods
#-o : Output directory 

rf-norm -t rf_count/1M7.rc -u rf_count/Untreated.rc -d rf_count/Denatured.rc -i rf_count/index.rci -sm 3 -nm 3 -o HIV_norm/
