#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# F->CDEGHI
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C49' 'C50' 'C02')
#label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C46' 'C47' 'C48' 'C02')
#label=('C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C36' 'C46' 'C03')
#label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C46' 'C02')
#label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C37' 'C46' 'C47' 'C02')
#label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C36' 'C37' 'C46' 'C02')

#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C47' 'C48' 'C49' 'C50' 'C02')
#template=template_F_C_v1
#num1=0
#num2=1
#for i in {01..15}
#do
#    echo $i
#    name=F_C_v1_${i}
#    
#    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh
#
#    cd $name
#    bash ./bash_pred.sh &
#    cd ../
#
#    let num1+=1
#    let num2+=1
#done
#wait

label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C46' 'C47' 'C48' 'C02')
template=template_F_D_v1
num1=0
num2=1
for i in {01..20}
do
    echo $i
    name=F_D_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C36' 'C46' 'C03')
template=template_F_E_v1
num1=0
num2=1
for i in {01..16}
do
    echo $i
    name=F_E_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C46' 'C02')
template=template_F_G_v1
num1=0
num2=1
for i in {01..18}
do
    echo $i
    name=F_G_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C37' 'C46' 'C47' 'C02')
template=template_F_H_v1
num1=0
num2=1
for i in {01..20}
do
    echo $i
    name=F_H_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C36' 'C37' 'C46' 'C02')
template=template_F_I_v1
num1=0
num2=1
for i in {01..17}
do
    echo $i
    name=F_I_v1_${i}
    
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash_pred.sh > ${name}/bash_pred.sh

    cd $name
    bash ./bash_pred.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait









