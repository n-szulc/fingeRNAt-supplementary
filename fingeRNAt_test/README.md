# Test of fingeRNAt interactions detection

In this directory we have various combinations of Receptors and Ligands:

|  | Small molecule | Protein  | RNA  | DNA    |  LNA |
|:-:|:-:|:-:|:-:|:-:|:-:|
| RNA  | 1AJU  | 2XS7  |  2XEB |  1BR3 | 1HHX  |
| DNA  | 3EM2  | 4AA6  | 1BR3  | 4AA6 (DNA-DNA)| 1W86  |

as well as the output fingerprints calculated by the fingeRNAt. We used this data to test the capability of the software to calculate fingerprints for various combinations of receptor/ligands.



<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:0 orderedList:0 -->

- [Data structure](#data-structure)
- [Input data](#input-data)
- [SIFs outputs](#sifs-outputs)
- [Pipeline](#pipeline)

<!-- /TOC -->

# Data structure

The data structure is as follows:

```
.
├── input_data
├── SIFs_outputs
└── README.md
```

# Input data

The `input_data/` contains directories with structures of nucleic acids' and their ligands.

The naming convention is as follows:

* `receptor.pdb` - file with structure of receptor nucleic acid, extracted and saved in PyMOL
* `ligand.sdf` - file with structure of ligand, extracted and saved in PyMOL

except for 1BR3, which contains complex of RNA-DNA and it's inputs are named `receptor-rna.pdb`, `receptor-dna.pdb`, `ligand-rna.sdf`, `ligand-dna.sdf`  as SIFs are calculated for both pairs.

Please note that no additional operations were applied to ligands and receptors in this test (i.e., protonation state was not calculated).

# SIFs outputs

Directory `SIFs_outputs` contains calculated SIFs for each complex.


# Pipeline

For each nucleic acid - ligand complex SIFt type `FULL` was calculated using fingeRNAt and the output was  saved to the corresponding directory.

e.g.

```
python PATH/TO/REPO/fingeRNAt/code/fingeRNAt.py -r input_data/1AJU/receptor.pdb -l input_data/1AJU/ligand.sdf -o SIFs_outputs/1AJU/
```

---

See details concerning fingeRNAt [installation](https://github.com/n-szulc/fingeRNAt#installation) and [usage](https://github.com/n-szulc/fingeRNAt#usage).
