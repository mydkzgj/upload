This experiment is designed for exploration of the relationship between RNA-FM embedding and the tertiary structures.

First we collect sequences  from PDB (previously used in our RhoFold (16805) offered by Shen, (16349) offered by Ash)
The clusters are gathered according to the TM-score between the tertiary structures of each instances.
The member list of each cluster is saved in a pickle created by Ash.


What I should do is

1.generate embeddings for these sequences

```
cd /user/liyu/cjy/ESM-GeneralSeq/redevelop/
python launch/predict.py --config="CONFIGs/extract_embedding.yml" \
--data_path="/share/liyu/RNA/Data/PDB_RNA-FM_cluster-experiment/seq" \
--save_dir="/share/liyu/RNA/Data/PDB_RNA-FM_cluster-experiment/embeddings/" --save_frequency 20000 \
--save_embeddings --save_embeddings_format "mean"
```

the other two models can be refereed from the Rfam cluster readme.

