# Interactions statistics in RNA-Ligand

This is a directory with data and instructions to perform analysis of non-covalent interactions statistics in RNA-Ligand complexes.

It includes Structural Interactions Fingerprints (SIFs) calculated on each complex from  dataset of non-redundant RNA-Ligand complexes, created as described in publication fingeRNAt - a software tool for analysis of nucleic acid-ligand complexes.

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [Data structure](#data-structure)
- [SIFs outputs](#sifs-outputs)
- [Pipeline](#pipeline)

<!-- /TOC -->

# Data structure

The data structure is as follows:

```
.
├── SIFs_outputs
├── Padroni
├── results
├── Pipeline.ipynb
├── all-ligands-clusters-new.csv
└── README.md
```

# SIFs outputs

Directory `SIFs_outputs` contains calculated SIFs type `FULL` together with its results from running `-detail` parameter; all the results are saved in separate directories, named according to RNA structure.

e.g.

```
├── SIFs_outputs
│   ├── 1AJU
│   │   ├── rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv
│   │   └──  DETAIL_rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv
│   ├── 1AKX
│   │   ├── rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv
│   │   └── DETAIL_rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv
│   └── SUMMARY
│       ├── DETAILED-all-data.tsv
│       ├── compare.sh
│       └── generate-full-data-file.sh
```

Apart from directories with SIFs for each RNA structure as can be seen above, `SIFs_outputs` contains `SUMMARY` directory, with all concatenated results for all the `DETAIL_*` files and two accompanying bash scripts.

# Padroni

Interactions data generated for the Padroni et al. data set.

# `all-ligands-clusters-new.csv`

Clusters of ligands. Clustering of chemical structures was performed in KNIME environment, using RDKit fingerprint with k-medoids algorithm (10 clusters), as described in [AnnapuRNA]. Clusters containing the same chemical classes of molecules (i.e., clusters containing  amino acids, amino sugars, and other molecules) were merged together into a single groups (named ”amino acids”, “amino sugars”, and “other”, respectively).

# Pipeline


## Pipeline.ipynb

`Pipeline.ipynb` is a jupyter notebook to **be run from within fingeRNAt environment.**
It covers all the steps required to repeat this analysis.

To run it, user has to additionally install its dependencies from within fingeRNAt environment:
* Jupyter Notebook
* matplotlib
* seaborn
* numpy

To run:

```
conda activate fingernat
jupyter notebook Pipeline.ipynb
```


## Analysis-of-interactions.ipynb

 Detailed interactions analysis using data generated with `Pipeline.ipynb` and descriptors calculated with KNIME.

---

See details concerning fingeRNAt [installation](https://github.com/n-szulc/fingeRNAt#installation) and [usage](https://github.com/n-szulc/fingeRNAt#usage).
