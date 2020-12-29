> summary.txt
echo "transitions	transversions" >> summary.txt
echo "$(cut -f2 nucleotides.txt | paste -sd+ - | bc)	$(cut -f2 nucleotides.txt | paste -sd+ - | bc)" >> summary.txt

