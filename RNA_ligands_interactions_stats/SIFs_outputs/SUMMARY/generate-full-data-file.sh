#!/bin/bash

outFile="SUMMARY/DETAILED-all-data.tsv"
cd ..

# generate header file
head -1 1AJU/DETAIL_rna+HOH+metals-pymol.pdb_ligand_standard-1.sdf_FULL.tsv | sed -e "s/$/\tPDB\tLigandNumber/g" > $outFile

for pdb in *
do
    echo $pdb
    i=0
    for detailFile in $(ls $pdb/DETAIL_*); do
	((i=i+1))
	echo $i					$detailFile;
        cat $detailFile | sed -e "s/$/\t$pdb\t$i/g" | grep -v "Ligand_name" >> $outFile
	done
done