#!/bin/bash
# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*.jpg */*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference
echo "DSSIM	File" > dssim.tsv
FILES="300-optimized/*.jpg 300-optimized/*.png 600-optimized/*.jpg 600-optimized/*.png 1200-optimized/*.jpg 1200-optimized/*.png"
for f in $FILES
do
	orig="${f/unoptimized/optimized}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim.tsv
done
