#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# CH->DEFGI
#label=('C17' 'C47' 'C07' 'C48' 'C02' 'C16' 'C32' 'C27' 'C03' 'C34' 'C46' 'C23' 'C20' 'C18' 'C24' 'C17')
#label=('C46' 'C24' 'C18' 'C32' 'C07' 'C16' 'C27' 'C20' 'C03' 'C23' 'C17' 'C46')
#label=('C48' 'C50' 'C32' 'C47' 'C02' 'C03' 'C46' 'C24' 'C18' 'C20' 'C23' 'C34' 'C27' 'C17' 'C48')
#label=('C46' 'C34' 'C02' 'C32' 'C27' 'C18' 'C20' 'C23' 'C17' 'C03' 'C24' 'C46')
#label=('C46' 'C32' 'C27' 'C24' 'C17' 'C18' 'C34' 'C23' 'C45' 'C03' 'C02' 'C20' 'C46')

label=('C17' 'C47' 'C07' 'C48' 'C02' 'C16' 'C32' 'C27' 'C03' 'C34' 'C46' 'C23' 'C20' 'C18' 'C24' 'C17')
template=template_lgbm_CH_D_v1
num1=0
num2=1
for i in {01..15}
do
    echo $i
    name=lgbm_CH_D_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C46' 'C24' 'C18' 'C32' 'C07' 'C16' 'C27' 'C20' 'C03' 'C23' 'C17' 'C46')
template=template_lgbm_CH_E_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_CH_E_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done

label=('C48' 'C50' 'C32' 'C47' 'C02' 'C03' 'C46' 'C24' 'C18' 'C20' 'C23' 'C34' 'C27' 'C17' 'C48')
template=template_lgbm_CH_F_v1
num1=0
num2=1
for i in {01..14}
do
    echo $i
    name=lgbm_CH_F_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done

label=('C46' 'C34' 'C02' 'C32' 'C27' 'C18' 'C20' 'C23' 'C17' 'C03' 'C24' 'C46')
template=template_lgbm_CH_G_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=lgbm_CH_G_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done

label=('C46' 'C32' 'C27' 'C24' 'C17' 'C18' 'C34' 'C23' 'C45' 'C03' 'C02' 'C20' 'C46')
template=template_lgbm_CH_I_v1
num1=0
num2=1
for i in {01..12}
do
    echo $i
    name=lgbm_CH_I_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done







