> nucleotides.txt
echo "nucleotide	transitions	transversions" >> nucleotides.txt
#for G:
file="$1"
calculate(){
((all = $(cut -f4,5 $file | awk 'length($0)<4' | awk '$1 != "'$1'" { next } { print }'| wc -l)))
((transitions =  $(cut -f4,5 $file | awk 'length($0)<4' | awk '$1 != "'$1'" { next } { print }' | awk '$2 != "'$2'" { next } { print }' | wc -l)))
((transver = $all - $transitions))
echo "$1	$transitions	$transver"  >> nucleotides.txt
}
calculate "A" "G"
calculate "G" "A"
calculate "C" "T"
calculate "T" "C"


