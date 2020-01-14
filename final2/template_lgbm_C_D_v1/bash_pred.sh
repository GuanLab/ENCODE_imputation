#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

assay_feature=('M02')
assay_target=('M18')
cell_test=('C19' 'C28' 'C39' 'C40')

#cell_cv=('Cx' 'Cy')
#time python train.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cv[@]} | tee -a log_1.txt 

cell_test=('C19' 'C28' 'C39' 'C40')
for the_cell in ${cell_test[@]}
do
    echo pred_$the_cell
    cell_cvt=('Cx' 'Cy')
    cell_cvt+=($the_cell)
    time python pred25bp.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cvt[@]} | tee -a log_$the_cell &
done
wait

#cell_test=('C39' 'C40')
#for the_cell in ${cell_test[@]}
#do
#    echo pred_$the_cell
#    cell_cvt=('Cx' 'Cy')
#    cell_cvt+=($the_cell)
#    time python pred25bp.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cvt[@]} &
#done
#wait



