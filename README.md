# transitions_and_transversions_in_a_genome
## Setup
1. Unpack the data file
  ```shell
gzip -d <file name>
```
2. Install rs if not already installed (on Mac OS by default)
  ```shell
apt-get install rs
```
(or other package manager by linux distribution)

3. Make files executable 
  ```shell
chmod -R +x *.sh *.R
```

## Get results

To get the ratios, you need to run the script   ```nucleotides_ratio.sh``` with your data file as an commandline argument.

For plotting, you need to run the script ```plotting.sh``` 

## Results

### By nucleotides 

<p float="left">
  <img src="https://github.com/lavakin/transitions_and_transversions_in_a_genome/blob/main/charts/transition_nucl.png" alt="transitions" width="400"/>
  <img src="https://github.com/lavakin/transitions_and_transversions_in_a_genome/blob/main/charts/transversion_nucl.png" alt="transversions" width="400"/>
</p>


### Ration for each of the nucleotides


<p float="left">
  <img src="https://github.com/lavakin/transitions_and_transversions_in_a_genome/blob/main/charts/adenin.png" alt="adenine" width="400"/>
  <img src="https://github.com/lavakin/transitions_and_transversions_in_a_genome/blob/main/charts/guanin.png" alt="guanine" width="400"/>
  <img src="https://github.com/lavakin/transitions_and_transversions_in_a_genome/blob/main/charts/thymine.png" alt="thymine" width="400"/>
  <img src="https://github.com/lavakin/transitions_and_transversions_in_a_genome/blob/main/charts/cytosine.png" alt="cytosine" width="400"/>
</p>
