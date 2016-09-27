#!/bin/bash
set -e
set -u
set -o pipefail
array=($(ls ./*.gz))
echo ${array[@]}
for file in ${array[@]};
do
    results="$(basename $file .fastq.gz).out"
    /programs/diamond-0.7.5/diamond blastx -d  allNcycle_seqs.dmnd -q ${file} -p 8 -e 1e-3 -k 1 -a ./$results
done;