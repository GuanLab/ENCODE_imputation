#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

## DGIK->EFH
#label=('C23' 'C24' 'C46' 'C36' 'C13' 'C27' 'C32' 'C12' 'C17' 'C18' 'C29' 'C23')
#label=('C17' 'C46' 'C27' 'C24' 'C23' 'C36' 'C12' 'C13' 'C18' 'C32' 'C17')
#label=('C13' 'C46' 'C18' 'C32' 'C12' 'C29' 'C27' 'C23' 'C36' 'C24' 'C17' 'C13')

## DGHKLMN->FI
#label=('C46' 'C17' 'C12' 'C25' 'C24' 'C23' 'C18' 'C46')
#label=('C17' 'C23' 'C18' 'C24' 'C46' 'C12' 'C17')

## DGHK->FI
#label=('C23' 'C13' 'C36' 'C24' 'C12' 'C25' 'C17' 'C32' 'C18' 'C27' 'C46' 'C23')
#label=('C32' 'C13' 'C18' 'C12' 'C46' 'C17' 'C27' 'C36' 'C29' 'C24' 'C23' 'C32')

label=('C23' 'C24' 'C46' 'C36' 'C13' 'C27' 'C32' 'C12' 'C17' 'C18' 'C29' 'C23')
template=template_lgbm_DGIK_E_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGIK_E_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C17' 'C46' 'C27' 'C24' 'C23' 'C36' 'C12' 'C13' 'C18' 'C32' 'C17')
template=template_lgbm_DGIK_F_v1
num1=0
num2=1
for i in {01..10}
do
    echo $i
    name=lgbm_DGIK_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C13' 'C46' 'C18' 'C32' 'C12' 'C29' 'C27' 'C23' 'C36' 'C24' 'C17' 'C13')
template=template_lgbm_DGIK_H_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGIK_H_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C46' 'C17' 'C12' 'C25' 'C24' 'C23' 'C18' 'C46')
template=template_lgbm_DGHKLMN_F_v1
num1=0
num2=1
for i in {01..07}
do
    echo $i
    name=lgbm_DGHKLMN_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
#wait

label=('C17' 'C23' 'C18' 'C24' 'C46' 'C12' 'C17')
template=template_lgbm_DGHKLMN_I_v1
num1=0
num2=1
for i in {01..06}
do
    echo $i
    name=lgbm_DGHKLMN_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C23' 'C13' 'C36' 'C24' 'C12' 'C25' 'C17' 'C32' 'C18' 'C27' 'C46' 'C23')
template=template_lgbm_DGHK_F_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGHK_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C32' 'C13' 'C18' 'C12' 'C46' 'C17' 'C27' 'C36' 'C29' 'C24' 'C23' 'C32')
template=template_lgbm_DGHK_I_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGHK_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait




