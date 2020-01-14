#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

assay_feature=('M18' 'M20' 'M29')
assay_target=('M22')
cell_test=('C14')

cell_cv=('Cx' 'Cy')
time python train.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cv[@]} | tee -a log_1.txt 

#for the_cell in ${cell_test[@]}
#do
#    echo pred_$the_cell
#    cell_cvt=('Cx' 'Cy')
#    cell_cvt+=($the_cell)
#    time python pred25bp.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cvt[@]}
#done





