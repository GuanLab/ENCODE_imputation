import re
import os
import numpy as np
import synapseclient
from synapseclient import File

syn = synapseclient.login(email='arcanum449@gmail.com',password='xxx')
#syn = synapseclient.login(email='hyangl@umich.edu',password='xxx')
#syn = synapseclient.login(rememberMe=True)

id_folder='syn20627207'

f=open('list_final.txt','r')
id_all=f.readlines()
f.close()

# upload
for i in np.arange(len(id_all)):
    the_id=id_all[i].strip()
    syn.store(File('./bigwig/' + the_id + '.bigwig',  parentId=id_folder))

# submit
evaluation = syn.getEvaluation(9614301)
list_all=list(syn.getChildren(parent=id_folder, includeTypes=['file']))
print(len(list_all))
for i in np.arange(len(list_all)):
    the_id = list_all[i]['id']
    entity = syn.get(the_id)
    submission = syn.submit(evaluation, entity, team='Hongyang Li and Yuanfang Guan v1')

#synapse list syn18690841

