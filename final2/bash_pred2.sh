#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# CDEH->GI
#label=('C20' 'C17' 'C32' 'C03' 'C18' 'C27' 'C46' 'C23' 'C24' 'C20')

# DGH->CFI
#label=('C32' 'C17' 'C20' 'C03' 'C27' 'C46' 'C34' 'C18' 'C24' 'C23' 'C02' 'C32')
#label=('C17' 'C04' 'C32' 'C20' 'C24' 'C09' 'C13' 'C27' 'C36' 'C02' 'C03' 'C12' 'C25' 'C46' 'C23' 'C34' 'C10' 'C18' 'C17')
#label=('C34' 'C23' 'C03' 'C17' 'C29' 'C18' 'C12' 'C09' 'C20' 'C32' 'C13' 'C46' 'C24' 'C27' 'C02' 'C04' 'C36' 'C34')

label=('C20' 'C17' 'C32' 'C03' 'C18' 'C27' 'C46' 'C23' 'C24' 'C20')
template=template_lgbm_CDEH_G_v1
num1=0
num2=1
for i in {01..09}
do
    echo $i
    name=lgbm_CDEH_G_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
#wait

label=('C20' 'C17' 'C32' 'C03' 'C18' 'C27' 'C46' 'C23' 'C24' 'C20')
template=template_lgbm_CDEH_I_v1
num1=0
num2=1
for i in {01..09}
do
    echo $i
    name=lgbm_CDEH_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C32' 'C17' 'C20' 'C03' 'C27' 'C46' 'C34' 'C18' 'C24' 'C23' 'C02' 'C32')
template=template_lgbm_DGH_C_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_DGH_C_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C17' 'C04' 'C32' 'C20' 'C24' 'C09' 'C13' 'C27' 'C36' 'C02' 'C03' 'C12' 'C25' 'C46' 'C23' 'C34' 'C10' 'C18' 'C17')
template=template_lgbm_DGH_F_v1
num1=0
num2=1
for i in {01..18}
do
    echo $i
    name=lgbm_DGH_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C34' 'C23' 'C03' 'C17' 'C29' 'C18' 'C12' 'C09' 'C20' 'C32' 'C13' 'C46' 'C24' 'C27' 'C02' 'C04' 'C36' 'C34')
template=template_lgbm_DGH_I_v1
num1=0
num2=1
for i in {01..17}
do
    echo $i
    name=lgbm_DGH_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait








