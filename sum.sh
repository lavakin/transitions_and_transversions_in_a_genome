> summary.txt
echo "transitions	$(cut -f2 nucleotides.txt | paste -sd+ - | bc)" >> summary.txt
echo "transversions	$(cut -f3 nucleotides.txt | paste -sd+ - | bc)" >> summary.txt

