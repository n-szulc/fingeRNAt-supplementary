#!/bin/bash

source activate base
conda activate fingernat

# -----------------------------#

for d in *.tsv
do
    echo $d
    #python /home/filips/IIMCB/_github_/fingeRNAt/code/fingerDISt.py -i $d -m tanimoto
    #python /home/filips/IIMCB/_github_/fingeRNAt/code/fingerDISt.py -i $d -m tversky
    #python /home/filips/IIMCB/_github_/fingeRNAt/code/fingerDISt.py -i $d -m manhattan
    python /home/filips/IIMCB/_github_/fingeRNAt/code/fingerDISt.py -i $d -m manhattan,square_euclidean,euclidean,half_square_euclidean,cosine_similarity,tanimoto,soergel,tversky
done

conda deactivate
exit