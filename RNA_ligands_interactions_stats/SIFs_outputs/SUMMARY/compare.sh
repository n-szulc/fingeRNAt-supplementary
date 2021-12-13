#!/bin/bash

#DETAIL_rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv  rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL_Counter.tsv  rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv
#rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL_ACUG.tsv    rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL_PuPy.tsv


bond="Water"

#ligand:
i=3


cd ..

for pdb in *
do
    #echo $pdb
    countCounter=$(cat $pdb/rna+HOH+metals-pymol.pdb_ligand_standard-$i.sdf_FULL_Counter.tsv | sed -e "s/\t/,/g" | rs -c, -C, -T|sed -e 's/.$//' -e "s/,/\t/g" | grep "$bond")
    countFull=$(cat $pdb/rna+HOH+metals-pymol.pdb_ligand_standard-$i.sdf_FULL.tsv | sed -e "s/\t/,/g" | rs -c, -C, -T|sed -e 's/.$//' -e "s/,/\t/g" | grep "$bond" | egrep 1$ | wc -l)
    countDetail=$(cat $pdb/DETAIL_rna+HOH+metals-pymol.pdb_ligand_standard-$i.sdf_FULL.tsv | grep $bond | wc -l)

    echo "$pdb	$countCounter	$countFull	$countDetail"
done