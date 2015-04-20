#!/bin/bash


# setup dir/structure
echo "# Test 0: Photoshop CC 2014 vs Photoshop CS 5" > conclusions.md


# optimize
imageoptim -d 300-optimized -q
imageoptim -d 300-optimized -q
imageoptim -d 300-optimized -q

imageoptim -d 600-optimized -q
imageoptim -d 600-optimized -q
imageoptim -d 600-optimized -q

imageoptim -d 1200-optimized -q
imageoptim -d 1200-optimized -q
imageoptim -d 1200-optimized -q


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


echo "DSSIM	File" > dssim-unoptimized.tsv
FILES="300-unoptimized/*.jpg 300-unoptimized/*.png 600-unoptimized/*.jpg 600-unoptimized/*.png 1200-unoptimized/*.jpg 1200-unoptimized/*.png"
for f in $FILES
do
	orig="${f/unoptimized/optimized}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-unoptimized.tsv
done

