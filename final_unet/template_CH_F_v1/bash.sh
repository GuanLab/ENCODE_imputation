#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

assay_feature=('M02' 'M22')
assay_target=('M16')

cell_cv=('Cx' 'Cy')

# train
num=01
dir=epoch${num}
echo $dir
python train.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cv[@]} | tee -a log_1.txt
mkdir -p $dir
cp weights_1.h5 $dir

# continue train
for num in {02..03}
do
    dir=epoch${num}
    echo $dir
    sed -e 's/#model.load_weights(name_model)/model.load_weights(name_model)/g; s/the_lr=1e-3/the_lr=1e-4/g; s/model.summary()/#model.summary()/g' train.py > continue_train.py
    python continue_train.py -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cv[@]} | tee -a log_1.txt
    mkdir -p $dir
    cp weights_1.h5 $dir
done

# pred
cell_test=('C06' 'C22' 'C51')
for the_cell in ${cell_test[@]}
do
    echo pred_$the_cell
    cell_cvt=('Cx' 'Cy')
    cell_cvt+=($the_cell)
    for num in {03..03}
    do
        dir=epoch${num}
        time python pred25bp.py -m ${dir}/weights_1.h5 -f ${assay_feature[@]} -t ${assay_target[@]} -cv ${cell_cvt[@]} &
    done
done

wait %1 %2 %3


