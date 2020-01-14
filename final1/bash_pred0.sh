#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# C->DEFGHI
#label=('C02' 'C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C02')
#label=('C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C49' 'C50' 'C02')
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
#label=('C02' 'C03' 'C05' 'C06' 'C07' 'C08' 'C16' 'C17' 'C18' 'C20' 'C22' 'C23' 'C24' 'C27' 'C32' 'C34' 'C45' 'C46' 'C47' 'C48' 'C50' 'C51' 'C02')
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C45' 'C46' 'C02')

label=('C02' 'C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C02')
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

label=('C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
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

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C49' 'C50' 'C02')
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

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
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

label=('C02' 'C03' 'C05' 'C06' 'C07' 'C08' 'C16' 'C17' 'C18' 'C20' 'C22' 'C23' 'C24' 'C27' 'C32' 'C34' 'C45' 'C46' 'C47' 'C48' 'C50' 'C51' 'C02')
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

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C45' 'C46' 'C02')
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









