#!/bin/bash

echo "Filename	Size" > ./filesize.tsv
ls -l */*.gif */*.jpg */*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv

# convert GIFs to PNGs for DDSIM comparison
mogrify -format png 300-optimized/*.gif[0]
mogrify -format png 600-optimized/*.gif[0]
mogrify -format png 1200-optimized/*.gif[0]