#!/bin/bash
for f in ./*.daa; do \
    /programs/diamond-0.7.5/diamond view -a $f | awk -v fn="$f" -F"\t" 'BEGIN {OFS = FS} {print $0, fn}';                                                                          
done > readVrefs.m8 