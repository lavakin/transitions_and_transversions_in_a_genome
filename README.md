# transitions and transversions in a genome
## Setup
1. Clone this repository
  ```shell
git clone github.com/lavakin/transitions_and_transversions_in_a_genome
```
2. Unpack the data file
  ```shell
gzip -d <file name>
```
3. Install rs and bc if not already installed (on Mac OS by default)
  ```shell
apt-get install rs bc
```
(or other package manager depending on the linux distribution)

4. Make scripts executable 
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
