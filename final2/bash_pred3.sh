#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# DEFGHI->C
#label=('C18' 'C17' 'C46' 'C03' 'C24' 'C23' 'C20' 'C32' 'C27' 'C18')

# DGI->CEFH
#label=('C23' 'C17' 'C24' 'C46' 'C18' 'C34' 'C32' 'C03' 'C02' 'C27' 'C20' 'C23')
#label=('C29' 'C24' 'C23' 'C36' 'C20' 'C09' 'C03' 'C18' 'C04' 'C46' 'C13' 'C32' 'C27' 'C12' 'C17' 'C29')
#label=('C04' 'C13' 'C27' 'C32' 'C23' 'C20' 'C09' 'C17' 'C24' 'C46' 'C03' 'C34' 'C12' 'C18' 'C02' 'C36' 'C04')
#label=('C34' 'C12' 'C46' 'C20' 'C27' 'C17' 'C09' 'C18' 'C13' 'C02' 'C29' 'C32' 'C23' 'C04' 'C24' 'C03' 'C36' 'C34')

label=('C18' 'C17' 'C46' 'C03' 'C24' 'C23' 'C20' 'C32' 'C27' 'C18')
template=template_lgbm_DEFGHI_C_v1
num1=0
num2=1
for i in {01..09}
do
    echo $i
    name=lgbm_DEFGHI_C_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C23' 'C17' 'C24' 'C46' 'C18' 'C34' 'C32' 'C03' 'C02' 'C27' 'C20' 'C23')
template=template_lgbm_DGI_C_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGI_C_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C29' 'C24' 'C23' 'C36' 'C20' 'C09' 'C03' 'C18' 'C04' 'C46' 'C13' 'C32' 'C27' 'C12' 'C17' 'C29')
template=template_lgbm_DGI_E_v1
num1=0
num2=1
for i in {01..15}
do
    echo $i
    name=lgbm_DGI_E_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C04' 'C13' 'C27' 'C32' 'C23' 'C20' 'C09' 'C17' 'C24' 'C46' 'C03' 'C34' 'C12' 'C18' 'C02' 'C36' 'C04')
template=template_lgbm_DGI_F_v1
num1=0
num2=1
for i in {01..16}
do
    echo $i
    name=lgbm_DGI_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C34' 'C12' 'C46' 'C20' 'C27' 'C17' 'C09' 'C18' 'C13' 'C02' 'C29' 'C32' 'C23' 'C04' 'C24' 'C03' 'C36' 'C34')
template=template_lgbm_DGI_H_v1
num1=0
num2=1
for i in {01..17}
do
    echo $i
    name=lgbm_DGI_H_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait










