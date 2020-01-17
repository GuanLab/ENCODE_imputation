

model_all=('C_D' 'C_E' 'C_F' 'C_G' 'C_H' 'C_I')
time python stack.py ${model_all[@]} &

model_all=('CH_D' 'CH_E' 'CH_F' 'CH_G' 'CH_I')
time python stack.py ${model_all[@]} &

model_all=('CDEH_G' 'CDEH_I' 'DGH_C' 'DGH_F' 'DGH_I')
time python stack.py ${model_all[@]} &

model_all=('DEFGHI_C' 'DGI_C' 'DGI_E' 'DGI_F' 'DGI_H')
time python stack.py ${model_all[@]} &

model_all= ('F_C' 'F_D' 'F_E' 'F_G' 'F_H' 'F_I')
time python stack.py ${model_all[@]} &

model_all=('DGHKLMN_F' 'DGHKLMN_I' 'DGHK_F' 'DGHK_I' 'DGIK_E' 'DGIK_F' 'DGIK_H')
time python stack.py ${model_all[@]} &

wait


