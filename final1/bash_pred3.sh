#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# DEFGHI->C
#label=('C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')

# DGI->CEFH
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
#label=('C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C03')
#label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C36' 'C46' 'C02')
#label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C29' 'C32' 'C34' 'C36' 'C46' 'C02')

label=('C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
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

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
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

label=('C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C29' 'C32' 'C36' 'C46' 'C03')
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

label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C36' 'C46' 'C02')
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

label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C29' 'C32' 'C34' 'C36' 'C46' 'C02')
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










