
for i in {0..5}
do
    sed -e "s/bash.sh/bash_pred.sh/g; s/time/bash/g; s/cp -r \$template \$name//g" < bash_run${i}.sh > bash_pred${i}.sh
done

chmod +x bash_pred*
