#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

## DGIK->EFH
#label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C12')
#label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C32' 'C36' 'C46' 'C12')
#label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C12')

## DGHKLMN->FI
#label=('C12' 'C17' 'C18' 'C23' 'C24' 'C25' 'C46' 'C12')
#label=('C12' 'C17' 'C18' 'C23' 'C24' 'C46' 'C12')

## DGHK->FI
#label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C25' 'C27' 'C32' 'C36' 'C46' 'C12')
#label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C12')

label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C12')
template=template_lgbm_DGIK_E_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGIK_E_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C32' 'C36' 'C46' 'C12')
template=template_lgbm_DGIK_F_v1
num1=0
num2=1
for i in {01..10}
do
    echo $i
    name=lgbm_DGIK_F_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C12')
template=template_lgbm_DGIK_H_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGIK_H_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C12' 'C17' 'C18' 'C23' 'C24' 'C25' 'C46' 'C12')
template=template_lgbm_DGHKLMN_F_v1
num1=0
num2=1
for i in {01..07}
do
    echo $i
    name=lgbm_DGHKLMN_F_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
#wait

label=('C12' 'C17' 'C18' 'C23' 'C24' 'C46' 'C12')
template=template_lgbm_DGHKLMN_I_v1
num1=0
num2=1
for i in {01..06}
do
    echo $i
    name=lgbm_DGHKLMN_I_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C25' 'C27' 'C32' 'C36' 'C46' 'C12')
template=template_lgbm_DGHK_F_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGHK_F_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C12' 'C13' 'C17' 'C18' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C12')
template=template_lgbm_DGHK_I_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGHK_I_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait




