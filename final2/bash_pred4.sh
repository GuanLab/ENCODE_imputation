#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# F->CDEGHI
#label=('C20' 'C47' 'C49' 'C02' 'C50' 'C34' 'C03' 'C46' 'C48' 'C17' 'C24' 'C18' 'C32' 'C23' 'C27' 'C20')
#label=('C18' 'C09' 'C03' 'C23' 'C27' 'C47' 'C12' 'C32' 'C10' 'C36' 'C13' 'C04' 'C25' 'C46' 'C48' 'C02' 'C24' 'C20' 'C17' 'C34' 'C18')
#label=('C12' 'C04' 'C20' 'C25' 'C36' 'C03' 'C24' 'C18' 'C13' 'C27' 'C09' 'C10' 'C17' 'C46' 'C32' 'C23' 'C12')
#label=('C04' 'C25' 'C17' 'C23' 'C36' 'C24' 'C34' 'C09' 'C18' 'C10' 'C12' 'C20' 'C46' 'C32' 'C02' 'C13' 'C27' 'C03' 'C04')
#label=('C18' 'C47' 'C17' 'C24' 'C03' 'C10' 'C12' 'C20' 'C02' 'C36' 'C46' 'C23' 'C25' 'C32' 'C34' 'C09' 'C13' 'C04' 'C37' 'C27' 'C18')
#label=('C04' 'C17' 'C12' 'C09' 'C36' 'C13' 'C34' 'C02' 'C20' 'C24' 'C18' 'C03' 'C32' 'C46' 'C37' 'C27' 'C23' 'C04')

label=('C20' 'C47' 'C49' 'C02' 'C50' 'C34' 'C03' 'C46' 'C48' 'C17' 'C24' 'C18' 'C32' 'C23' 'C27' 'C20')
template=template_lgbm_F_C_v1
num1=0
num2=1
for i in {01..15}
do
    echo $i
    name=lgbm_F_C_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C18' 'C09' 'C03' 'C23' 'C27' 'C47' 'C12' 'C32' 'C10' 'C36' 'C13' 'C04' 'C25' 'C46' 'C48' 'C02' 'C24' 'C20' 'C17' 'C34' 'C18')
template=template_lgbm_F_D_v1
num1=0
num2=1
for i in {01..20}
do
    echo $i
    name=lgbm_F_D_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C12' 'C04' 'C20' 'C25' 'C36' 'C03' 'C24' 'C18' 'C13' 'C27' 'C09' 'C10' 'C17' 'C46' 'C32' 'C23' 'C12')
template=template_lgbm_F_E_v1
num1=0
num2=1
for i in {01..16}
do
    echo $i
    name=lgbm_F_E_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C04' 'C25' 'C17' 'C23' 'C36' 'C24' 'C34' 'C09' 'C18' 'C10' 'C12' 'C20' 'C46' 'C32' 'C02' 'C13' 'C27' 'C03' 'C04')
template=template_lgbm_F_G_v1
num1=0
num2=1
for i in {01..18}
do
    echo $i
    name=lgbm_F_G_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C18' 'C47' 'C17' 'C24' 'C03' 'C10' 'C12' 'C20' 'C02' 'C36' 'C46' 'C23' 'C25' 'C32' 'C34' 'C09' 'C13' 'C04' 'C37' 'C27' 'C18')
template=template_lgbm_F_H_v1
num1=0
num2=1
for i in {01..20}
do
    echo $i
    name=lgbm_F_H_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C04' 'C17' 'C12' 'C09' 'C36' 'C13' 'C34' 'C02' 'C20' 'C24' 'C18' 'C03' 'C32' 'C46' 'C37' 'C27' 'C23' 'C04')
template=template_lgbm_F_I_v1
num1=0
num2=1
for i in {01..17}
do
    echo $i
    name=lgbm_F_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait









