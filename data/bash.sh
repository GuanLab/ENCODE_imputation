#!/bin/bash

## one-hot encoding DNA-sequence
cd hg38
bash bash_separate_chr.sh  
python encode_dna_sequence.py  
python generate_dna_bigwig.py
cd ..

## epigenetic features and targets ##
# quantile normalization
python subsample_for_anchor.py # all 
python create_ref_for_anchor_final.py # all
python anchor_signal_bigwig.py # all
# average feature
python create_avg_chr_final.py # all
# average baseline
python generate_baseline_avg_anchored_bigwig.py
# training target
python generate_gold_anchored_bigwig.py # for train

## orange features ##
# generate orange feature
bash bash_orange.sh
# convert into orange
python generate_orange_bigwig.py
# average orange
python create_avg_orange_final.py 



