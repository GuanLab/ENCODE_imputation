import argparse
import pyBigWig
import os
import sys
import numpy as np
import scipy.stats
import re
import glob

def dict_to_arr(d, chroms):
    """Concat vectors in d
    """
    result = []
    for c in chroms:
        result.extend(d[c])
    return np.array(result)

chr_all=['chr1','chr2','chr3','chr4','chr5','chr6','chr7','chr8','chr9','chr10','chr11','chr12','chr13','chr14','chr15','chr16','chr17','chr18','chr19','chr20','chr21','chr22','chrX']
num_bp=[248956422,242193529,198295559,190214555,181538259,170805979,159345973,145138636,138394717,133797422,135086622,133275309,114364328,107043718,101991189,90338345,83257441,80373285,58617616,64444167,46709983,50818468,156040895]

chr_len={}
for i in np.arange(len(chr_all)):
    chr_len[chr_all[i]]=num_bp[i]

chr_len25={}
for i in np.arange(len(chr_all)):
    chr_len25[chr_all[i]]=int(np.ceil(num_bp[i]/25.0))

## argv
#def get_args():
#    parser = argparse.ArgumentParser(description="score")
#    parser.add_argument('-t', '--target', default='M18', nargs='+',type=str,
#        help='target assay')
#    parser.add_argument('-c', '--cell', default='C02', nargs='+', type=str,
#        help='test cell lines')
#    parser.add_argument('-chr', '--chrom', default=chr_all, nargs='+', type=str,
#        help='test chromosome')
#    args = parser.parse_args()
#    return args
#
#args=get_args()
#
#test_all=args.cell
#the_assay=args.target[0]
#list_chr=args.chrom

path_computer='../data/'
#gene_annotations=read_annotation_bed(path_computer + 'anno/gencode.v29.genes.gtf.bed')
#enh_annotations=read_annotation_bed(path_computer + 'anno/F5.hg38.enhancers.bed')
#path0 = path_computer + 'var_final/'

path1 = './npy/'
path2 = '../baseline_avg_final/'
path3 = './stats1/'
os.system('mkdir -p ' + path3)

#list_chr=['chr11']
list_chr=chr_all

print(sys.argv)
id_all=sys.argv[1:]
#id_all=glob.glob(path1 + '*chrX.npy')
#id_all.sort()

for the_id in id_all:
#    the_id = the_id.split('/')[-1].split('_')[1]
    print(the_id)
    the_cell=re.sub('M[0-9][0-9]','',the_id)
    the_assay=re.sub('C[0-9][0-9]','',the_id)
    filescore=open(path3 + 'stats_' + the_id + '.txt','w')
    filescore.write('%s\t%s\t%s\t%s\t%s\t%s\n' % ('type','max','mean','median','p90','sd'))
    
    # load pred & gold
    dict_pred={}
    dict_dust={}
    for the_chr in list_chr:
        print(the_chr)
        dict_pred[the_chr]=np.load(path1 + 'pred25bp_' + the_id + '_' + the_chr + '.npy')
        bw_label=pyBigWig.open(path2 + 'gold_anchored_' + the_assay + '.bigwig')
        dict_dust[the_chr]=np.array(bw_label.values(the_chr, 0, chr_len25[the_chr]))
        bw_label.close()
    
    # score
    pred = dict_to_arr(dict_pred, chroms=list_chr)
    dust = dict_to_arr(dict_dust, chroms=list_chr)
    
    filescore.write('%s\t%.4f\t%.4f\t%.4f\t%.4f\t%.4f\n' % 
        ('pred',np.max(pred),np.mean(pred),np.percentile(pred,50),np.percentile(pred,90),np.std(pred)))
    filescore.write('%s\t%.4f\t%.4f\t%.4f\t%.4f\t%.4f\n' % 
        ('avg',np.max(dust),np.mean(dust),np.percentile(dust,50),np.percentile(dust,90),np.std(dust)))
    filescore.flush()
    filescore.close()
    
    
    
    
