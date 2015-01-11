#!/bin/bash


# setup dir/structure
rm -r 300-optimized 600-optimized 1200-optimized 300-unoptimized 600-unoptimized 1200-unoptimized
mkdir 300-optimized 600-optimized 1200-optimized 300-unoptimized 600-unoptimized 1200-unoptimized
echo "# Test 1: optimization before resize" > conclusions.md

# resize
mogrify -path 300-optimized -resize 300 ../assets-optimized/*
mogrify -path 600-optimized -resize 600 ../assets-optimized/*
mogrify -path 1200-optimized -resize 1200 ../assets-optimized/*
mogrify -path 300-unoptimized -resize 300 ../assets-unoptimized/*
mogrify -path 600-unoptimized -resize 600 ../assets-unoptimized/*
mogrify -path 1200-unoptimized -resize 1200 ../assets-unoptimized/*


# optimize
imageoptim -d . -q
imageoptim -d . -q
imageoptim -d . -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*.gif */*.jpg */*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# convert GIFs to PNGs for DSSIM comparison
mogrify -format png 300-optimized/*.gif[0]
mogrify -format png 600-optimized/*.gif[0]
mogrify -format png 1200-optimized/*.gif[0]
mogrify -format png 300-unoptimized/*.gif[0]
mogrify -format png 600-unoptimized/*.gif[0]
mogrify -format png 1200-unoptimized/*.gif[0]


# calculate difference: unoptimized
echo "DSSIM	File" > dssim-unoptimized.tsv
FILES="300-unoptimized/*.jpg 300-unoptimized/*.png 600-unoptimized/*.jpg 600-unoptimized/*.png 1200-unoptimized/*.jpg 1200-unoptimized/*.png"
for f in $FILES
do
	orig="${f/unoptimized/optimized}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-unoptimized.tsv
done


# calculate difference: optimized
echo "DSSIM	File" > dssim-optimized.tsv
FILES="300-optimized/*.jpg 300-optimized/*.png 600-optimized/*.jpg 600-optimized/*.png 1200-optimized/*.jpg 1200-optimized/*.png"
for f in $FILES
do
	orig="${f/unoptimized/optimized}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-optimized.tsv
done
