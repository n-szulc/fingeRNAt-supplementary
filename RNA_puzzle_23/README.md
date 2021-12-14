# RNA Puzzle data analysis

Data and the pipeline used for analysis of RNA Puzzle 23 data.

Data structure:

```
├── Pipeline.ipynb         # jupyter notebook for data analysis and plotting
├── data
│   └── pdbs               # source and processed pdb files
├── docking                # similarity of fingerprints for docked poses
│   ├── case_study
│   ├── rmsd+similarity-RNA+ions.tsv
│   ├── rmsd+similarity-RNA+ions+water.tsv
│   └── rmsd+similarity-RNA.tsv
├── puzzle                 # processed data, fingerprints, and SIFts similarities
│   ├── das7
│   ├── fingerprints
│   ├── fp-similarities-all-reference-good.tsv
│   ├── LigRMSD
│   └── ligrmsd+similarity.csv
```
