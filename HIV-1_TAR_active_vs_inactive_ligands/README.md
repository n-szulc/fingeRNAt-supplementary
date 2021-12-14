# Interactions analysis of 1UTS HIV-1 TAR structure with its active/inactive ligands

This is a directory with data and instructions to perform analysis of non-covalent interactions of 1UTS HIV-1 TAR structure in complexes with it's active/inactive ligands.

It includes Structural Interactions Fingerprints (SIFs) calculated on each complex of 1UTS with each ligand from the abovementioned dataset, created and docked to 1UTS, using three different docking programs, as described in publication *fingeRNAt - a software tool for analysis of nucleic acid-ligand complexes*.

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [Data structure](#data-structure)
- [Input data](#input-data)
- [SIFs outputs](#sifs-outputs)
- [Results](#results)
- [Pipeline](#pipeline)

<!-- /TOC -->

# Data structure

The data structure is as follows:

```
.
├── input_data
│   └── ligands_activity.csv
├── SIFs_outputs
│   ├── 1best
│   │   ├── dock6.tsv
│   │   ├── idock.tsv
│   │   └── rdock.tsv
│   ├── 3best
│   │   ├── dock6.tsv
│   │   ├── idock.tsv
│   │   └── rdock.tsv
│   └── with_activities
│       ├── 0
│       │   ├── dock6_1best.tsv
│       │   ├── dock6_3best.tsv
│       │   ├── idock_1best.tsv
│       │   ├── idock_3best.tsv
│       │   ├── rdock_1best.tsv
│       │   └── rdock_3best.tsv
│       └── 1
│           ├── dock6_1best.tsv
│           ├── dock6_3best.tsv
│           ├── idock_1best.tsv
│           ├── idock_3best.tsv
│           ├── rdock_1best.tsv
│           └── rdock_3best.tsv
└── results
    ├── dock6
    │   ├── 0_1best.tsv
    │   ├── 0_3best.tsv
    │   ├── 1_1best.tsv
    │   └── 1_3best.tsv
    ├── idock
    │   ├── 0_1best.tsv
    │   ├── 0_3best.tsv
    │   ├── 1_1best.tsv
    │   └── 1_3best.tsv
    └── rdock
		│   ├── 0_1best.tsv
    │   ├── 0_3best.tsv
    │   ├── 1_1best.tsv
    │   └── 1_3best.tsv
├── Pipeline.ipynb
├── README.md
```
# Input data

File `ligands_activity.csv` contains information about each ligand's activity classified as described in *fingeRNAt - a software tool for analysis of nucleic acid-ligand complexes*.

# SIFs outputs

Directory `SIFs_outputs` contains subdirectories `1best` and `3best` with calculated SIFs for  three best poses and one best pose of each ligand in complex with 1UTS, respectively, using three different docking programs: rDock (version 2013.1), iDock (version 2.2.1), Dock6 (version 6.9).

---

Subdirectory `with_activities` **contains final SIFs results**, used for summarizing interaction modes of 1UTS with its active/inactive ligands. It contains calculated SIFs divided due to their activity; SIFs for active ligands are in subdirectory `1` and SIFs for inactive ligands are in subdirectory `0`.

The naming convention in subdirectory `with_activities` is as follows:

`SubdirectoryIndicatingActivity/DockingProgram_NumberOfChosenBestPosesbest.tsv`

e.g.

`0/rdock_1best.tsv`

means this file contains SIFs for one best pose of each inactive ligand docked using rDock

or

`1/idock_3best.tsv`

means this file contains SIFs for three best poses of each active ligand docked using iDock


# Results

Directory `results` contains calculated arithmetic means for each column of SIFs result files from `SIFs_outputs/with_activities`.

The naming convention in directory `results` is as follows:

`DockingProgram/Activity_NumberOfChosenBestPosesbest.tsv`

e.g.

`rdock/0_1best.tsv`

means this file contains calculated arithmetic means for each column of SIFs for one best pose of each inactive ligand docked using rDock

or

`idock/1_3best.tsv`

means this file contains calculated arithmetic means for each column of SIFs for three best poses of each active ligand docked using iDock


# Pipeline

`Pipeline.ipynb` is a jupyter notebook to **be run from within fingeRNAt environment.**
It covers all the steps required to repeat this analysis.

To run it, user has to additionally install its dependencies from within fingeRNAt environment:
* Jupyter Notebook
* ipywidgets >= 7.5.1

To run:

```
conda activate fingernat
jupyter notebook Pipeline.ipynb
```

---

See details concerning fingeRNAt [installation](https://github.com/n-szulc/fingeRNAt#installation) and [usage](https://github.com/n-szulc/fingeRNAt#usage).
