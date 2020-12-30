#!/bin/bash
> ./results/summary.txt
echo "transitions	$(cut -f2 ./results/nucleotides.txt | paste -sd+ - | bc)" >> ./results/summary.txt
echo "transversions	$(cut -f3 ./results/nucleotides.txt | paste -sd+ - | bc)" >> ./results/summary.txt

