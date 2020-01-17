#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

label=('C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
template=template_lgbm_CDEH_I_v1
num1=0
num2=1
for i in {01..09}
do
    echo $i
    name=lgbm_CDEH_I_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait


