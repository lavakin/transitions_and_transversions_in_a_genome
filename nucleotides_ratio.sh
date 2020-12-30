#!/bin/bash
bash ./scripts/count_trans.sh $1
bash ./scripts/sum.sh
cat ./results/nucleotides.txt | rs -c -C -T > ./results/transp_nucleotides.txt
mkdir -p charts


