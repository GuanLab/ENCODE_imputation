#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# CH->DEFGI
#label=('C02' 'C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C02')
#label=('C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C50' 'C02')
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C45' 'C46' 'C02')

label=('C02' 'C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C02')
template=template_CH_D_v1
num1=0
num2=1
for i in {01..15}
do
    echo $i
    name=CH_D_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C03' 'C07' 'C16' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
template=template_CH_E_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=CH_E_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C50' 'C02')
template=template_CH_F_v1
num1=0
num2=1
for i in {01..14}
do
    echo $i
    name=CH_F_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
template=template_CH_G_v1
num1=0
num2=1
for i in {01..11}
do
    echo $i
    name=CH_G_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done

label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C45' 'C46' 'C02')
template=template_CH_I_v1
num1=0
num2=1
for i in {01..12}
do
    echo $i
    name=CH_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done







