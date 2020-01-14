## ENCODE Imputation Solution by Hongyang Li and Yuanfang Guan

Please contact (hyangl@umich.edu or gyuanfan@umich.edu) if you have any questions or suggestions.

![Figure1](figure/fig1.png?raw=true "Title")

---

## Installation
Git clone a copy of code:
```
git clone https://github.com/GuanLab/ENCODE_imputation.git
```
## Required dependencies

* [python](https://www.python.org) (3.6.5)
* [numpy](http://www.numpy.org/) (1.13.3). It comes pre-packaged in Anaconda.
* [pyBigWig](https://github.com/deeptools/pyBigWig) A package for quick access to and create of bigwig files. It can be installed by:
```
conda install pybigwig -c bioconda
```
* [lightgbm](https://github.com/microsoft/LightGBM) (2.2.3). A fast and high performance boosting tree algorithm. It can be installed by:
```
conda install -c conda-forge lightgbm
```

## Required datasets
Download and decompress the challenge data and put them in the corresponding directories:
* 1.[GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta.gz](https://www.synapse.org/#!Synapse:syn18143949) (./data/hg38/)
* 2.[submission_template](https://www.synapse.org/#!Synapse:syn18145317) (./data/submission_template)
* 3.[training and validation epigenomes](https://www.synapse.org/#!Synapse:syn18143300) (put all training and validation data in the same directory ./data/bigwig/) 

---

Notably, reproducing the entire model training and prediction steps requires considerable time, memory and disk space. A good start would be training a subset of models and making the corresponding predictions.

## Preprocessing data
Go to directory **data** and follow the steps in **bash.sh**.

## Train models
Go to directory **final1** and **final2**, and run the "bash_run0-5.sh" respectively. The **final1** and **final2** are both lightGBM models with identical overall settings. The differences reside in the parameters used in model building.

## Make predictions
Go to directory **final1** and **final2**, and run the "bash_pred0-5.sh" respectively.

## Stacking predictions
Go to directory **submission** and follow the steps in "bash_stack.sh".






