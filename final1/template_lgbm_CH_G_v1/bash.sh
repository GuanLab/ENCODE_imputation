#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

assay_feature=('M02' 'M22')
assay_target=('M20')
cell_test=('C05' 'C51')

cell_cv=('Cx' 'Cy')
time python train.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cv[@]} | tee -a log_1.txt 

#cell_test=('C05' 'C51')
#for the_cell in ${cell_test[@]}
#do
#    echo pred_$the_cell
#    cell_cvt=('Cx' 'Cy')
#    cell_cvt+=($the_cell)
#    time python pred25bp.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cvt[@]} &
#done
#wait




