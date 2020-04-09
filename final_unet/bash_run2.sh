#!/bin/bash

set -e

##  D  E  F  G  H  I ##
## 18 17 16 20 22 29 ##

# CDEH->GI
#label=('C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')

# DGH->CFI
#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
#label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C46' 'C02')
#label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C29' 'C32' 'C34' 'C36' 'C46' 'C02')

label=('C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
template=template_CDEH_G_v1
num1=0
num2=1
for i in {01..09}
do
    echo $i
    name=CDEH_G_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
#wait

label=('C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C46' 'C03')
template=template_CDEH_I_v1
num1=0
num2=1
for i in {01..09}
do
    echo $i
    name=CDEH_I_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

#label=('C02' 'C03' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C32' 'C34' 'C46' 'C02')
#template=template_DGH_C_v1
#num1=0
#num2=1
#for i in {01..11}
#do
#    echo $i
#    name=DGH_C_v1_${i}
#    cp -r $template $name
#    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh
#
#    cd $name
#    time ./bash.sh &
#    cd ../
#
#    let num1+=1
#    let num2+=1
#done
#wait

label=('C02' 'C03' 'C04' 'C09' 'C10' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C25' 'C27' 'C32' 'C34' 'C36' 'C46' 'C02')
template=template_DGH_F_v1
num1=0
num2=1
for i in {01..18}
do
    echo $i
    name=DGH_F_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait

label=('C02' 'C03' 'C04' 'C09' 'C12' 'C13' 'C17' 'C18' 'C20' 'C23' 'C24' 'C27' 'C29' 'C32' 'C34' 'C36' 'C46' 'C02')
template=template_DGH_I_v1
num1=0
num2=1
for i in {01..17}
do
    echo $i
    name=DGH_I_v1_${i}
    cp -r $template $name
    sed -e "s/Cx/${label[${num1}]}/g; s/Cy/${label[${num2}]}/g" < $template/bash.sh > ${name}/bash.sh

    cd $name
    time ./bash.sh &
    cd ../

    let num1+=1
    let num2+=1
done
wait








