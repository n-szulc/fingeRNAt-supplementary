mkdir -p dockprep

for f in *.pdb
do
  ((i++))

  base=`basename $f .pdb`

  echo
  echo -e "\e[104m$i      $base\e[0m"
  echo
 
  timeout 30m chimera --nogui --script "dockprep.py -o dockprep/$base.mol2" $f
  #exit

done
