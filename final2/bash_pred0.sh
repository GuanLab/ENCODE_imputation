#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# C->DEFGHI
#label=('C47' 'C17' 'C32' 'C24' 'C07' 'C23' 'C20' 'C48' 'C16' 'C03' 'C02' 'C27' 'C18' 'C46' 'C34' 'C47')
#label=('C16' 'C32' 'C20' 'C23' 'C17' 'C24' 'C46' 'C27' 'C07' 'C03' 'C18' 'C16')
#label=('C32' 'C17' 'C20' 'C46' 'C49' 'C02' 'C27' 'C23' 'C47' 'C48' 'C03' 'C34' 'C24' 'C18' 'C50' 'C32')
#label=('C17' 'C27' 'C24' 'C02' 'C23' 'C32' 'C03' 'C34' 'C46' 'C18' 'C20' 'C17')
#label=('C27' 'C05' 'C22' 'C48' 'C18' 'C24' 'C17' 'C06' 'C46' 'C50' 'C16' 'C32' 'C47' 'C45' 'C34' 'C23' 'C08' 'C07' 'C51' 'C02' 'C03' 'C20' 'C27')
#label=('C18' 'C20' 'C32' 'C46' 'C23' 'C24' 'C45' 'C27' 'C17' 'C02' 'C34' 'C03' 'C18')

label=('C47' 'C17' 'C32' 'C24' 'C07' 'C23' 'C20' 'C48' 'C16' 'C03' 'C02' 'C27' 'C18' 'C46' 'C34' 'C47')
template=template_lgbm_C_D_v1
num1=0
num2=1
for i in {01..15}
do
    echo $i
    name=lgbm_C_D_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C16' 'C32' 'C20' 'C23' 'C17' 'C24' 'C46' 'C27' 'C07' 'C03' 'C18' 'C16')
template=template_lgbm_C_E_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_C_E_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C32' 'C17' 'C20' 'C46' 'C49' 'C02' 'C27' 'C23' 'C47' 'C48' 'C03' 'C34' 'C24' 'C18' 'C50' 'C32')
template=template_lgbm_C_F_v1
num1=0
num2=1
for i in {01..15}
do
    echo $i
    name=lgbm_C_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C17' 'C27' 'C24' 'C02' 'C23' 'C32' 'C03' 'C34' 'C46' 'C18' 'C20' 'C17')
template=template_lgbm_C_G_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_C_G_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C27' 'C05' 'C22' 'C48' 'C18' 'C24' 'C17' 'C06' 'C46' 'C50' 'C16' 'C32' 'C47' 'C45' 'C34' 'C23' 'C08' 'C07' 'C51' 'C02' 'C03' 'C20' 'C27')
template=template_lgbm_C_H_v1
num1=0
num2=1
for i in {01..22}
do
    echo $i
    name=lgbm_C_H_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C18' 'C20' 'C32' 'C46' 'C23' 'C24' 'C45' 'C27' 'C17' 'C02' 'C34' 'C03' 'C18')
template=template_lgbm_C_I_v1
num1=0
num2=1
for i in {01..12}
do
    echo $i
    name=lgbm_C_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait









