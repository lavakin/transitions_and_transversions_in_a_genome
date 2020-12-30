bash count_trans.sh $1
bash sum.sh
cat nucleotides.txt | rs -c -C -T > transp_nucleotides.txt
mkdir charts


