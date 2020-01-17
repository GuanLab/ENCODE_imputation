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

## Preprocessing data
Go to directory **data** and follow the steps in **bash.sh**.

---

Notably, reproducing the entire model training and prediction steps requires considerable time, memory and disk space. A good start would be training a subset of models and making the corresponding predictions. Here we provide an example for building models and making predictions for epigenome C07M29 (H3K9me3 in Caco-2) during the challenge.

## Train models
Go to directory **final1** and **final2**, and run the "bash_run_example.sh" respectively. The **final1** and **final2** are both lightGBM models with identical overall settings. The differences reside in the parameters used in model building. This will create nine parallel folders named "lgbm_CDEH_I_v1_01-09", using epigenomes from different cell types as the training and validation targets. For simplicity, we name the epigeneic marks with captital letters as follows:

| letter | challenge id | mark name |
| ------ | ------------ | --------- |
| C      | M02          | DNase-seq |
| D      | M18          | H3K36me3  |
| E      | M17          | H3K27me3  |
| F      | M16          | H3K27ac   |
| G      | M20          | H3K4me1   |
| H      | M22          | H3K4me3   |
| I      | M29          | H3K9me3   |
| J      | M01          | ATAC-seq  |
| K      | M26          | H3K9ac    |
| L      | M21          | H3K4me2   |
| M      | M03          | H2AFZ     |
| N      | M25          | H3K79me2  |

For this example "CDEH_I", we used four marks (**C**, **D**, **E**, **H**) as cell type-specific features to predict mark **I**. (For complete model training, run "bash_run0-5.sh".)

## Make predictions
Go to directory **final1** and **final2**, and run the "bash_pred_example.sh" respectively. Then run "bash_stack_example.sh" to stack predictions from multiple models. This will generate prediction files named as "pred25bp_C07M29_chrX.npy" in each directory. (For complete model training, run bash_pred0-5.sh" and "bash_stack.sh".)

## Final predictions
Go to directory **submission** and follow the steps in "bash_stack_example.sh". This will create a file called C07M29.bigwig, which is the final submission file to the challenge. (For complete model training, run "bash_stack.sh".)






