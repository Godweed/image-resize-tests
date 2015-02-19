#!/bin/bash

# setup dir/structure
rm -r default 0 1 2 3 4 5 6 7 8 9 10
mkdir default 0 1 2 3 4 5 6 7 8 9 10
mkdir default/300 0/300 1/300 2/300 3/300 4/300 5/300 6/300 7/300 8/300 9/300 10/300
mkdir default/600 0/600 1/600 2/600 3/600 4/600 5/600 6/600 7/600 8/600 9/600 10/600
mkdir default/1200 0/1200 1/1200 2/1200 3/1200 4/1200 5/1200 6/1200 7/1200 8/1200 9/1200 10/1200

echo "# Test 61: filter:lobes" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 1/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=1 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 1/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=1 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 1/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=1 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 1/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=1 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 1/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=1 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 1/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=1 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 2/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=2 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 2/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=2 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 2/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=2 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 2/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=2 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 2/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=2 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 2/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=2 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 3/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=3 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 3/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=3 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 3/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=3 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 3/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=3 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 3/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=3 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 3/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=3 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 4/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=4 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 4/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=4 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 4/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=4 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 4/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=4 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 4/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=4 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 4/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=4 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 5/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=5 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 5/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=5 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 5/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=5 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 5/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=5 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 5/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=5 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 5/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=5 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 6/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=6 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 6/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=6 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 6/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=6 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 6/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=6 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 6/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=6 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 6/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=6 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 7/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=7 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 7/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=7 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 7/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=7 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 7/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=7 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 7/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=7 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 7/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=7 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 8/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=8 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 8/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=8 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 8/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=8 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 8/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=8 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 8/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=8 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 8/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=8 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 9/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=9 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 9/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=9 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 9/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=9 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 9/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=9 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 9/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=9 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 9/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=9 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 10/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=10 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/300 -filter Triangle -define filter:support=2.0 -define filter:lobes=10 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 10/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=10 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/600 -filter Triangle -define filter:support=2.0 -define filter:lobes=10 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 10/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=10 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/1200 -filter Triangle -define filter:support=2.0 -define filter:lobes=10 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 0 -q
imageoptim -d 0 -q
imageoptim -d 0 -q

imageoptim -d 1 -q
imageoptim -d 1 -q
imageoptim -d 1 -q

imageoptim -d 2 -q
imageoptim -d 2 -q
imageoptim -d 2 -q

imageoptim -d 3 -q
imageoptim -d 3 -q
imageoptim -d 3 -q

imageoptim -d 4 -q
imageoptim -d 4 -q
imageoptim -d 4 -q

imageoptim -d 5 -q
imageoptim -d 5 -q
imageoptim -d 5 -q

imageoptim -d 6 -q
imageoptim -d 6 -q
imageoptim -d 6 -q

imageoptim -d 7 -q
imageoptim -d 7 -q
imageoptim -d 7 -q

imageoptim -d 8 -q
imageoptim -d 8 -q
imageoptim -d 8 -q

imageoptim -d 9 -q
imageoptim -d 9 -q
imageoptim -d 9 -q

imageoptim -d 10 -q
imageoptim -d 10 -q
imageoptim -d 10 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default
echo "DSSIM	File" > dssim-default.tsv
FILES="default/300/* default/600/* default/1200/*"
for f in $FILES
do
	orig="${f/default\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default.tsv
done

# calculate difference: 0
echo "DSSIM	File" > dssim-0.tsv
FILES="0/300/* 0/600/* 0/1200/*"
for f in $FILES
do
	orig="${f/0\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0.tsv
done

# calculate difference: 1
echo "DSSIM	File" > dssim-1.tsv
FILES="1/300/* 1/600/* 1/1200/*"
for f in $FILES
do
	orig="${f/1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1.tsv
done

# calculate difference: 2
echo "DSSIM	File" > dssim-2.tsv
FILES="2/300/* 2/600/* 2/1200/*"
for f in $FILES
do
	orig="${f/2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2.tsv
done

# calculate difference: 3
echo "DSSIM	File" > dssim-3.tsv
FILES="3/300/* 3/600/* 3/1200/*"
for f in $FILES
do
	orig="${f/3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-3.tsv
done

# calculate difference: 4
echo "DSSIM	File" > dssim-4.tsv
FILES="4/300/* 4/600/* 4/1200/*"
for f in $FILES
do
	orig="${f/4\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-4.tsv
done

# calculate difference: 5
echo "DSSIM	File" > dssim-5.tsv
FILES="5/300/* 5/600/* 5/1200/*"
for f in $FILES
do
	orig="${f/5\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-5.tsv
done

# calculate difference: 6
echo "DSSIM	File" > dssim-6.tsv
FILES="6/300/* 6/600/* 6/1200/*"
for f in $FILES
do
	orig="${f/6\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-6.tsv
done

# calculate difference: 7
echo "DSSIM	File" > dssim-7.tsv
FILES="7/300/* 7/600/* 7/1200/*"
for f in $FILES
do
	orig="${f/7\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-7.tsv
done

# calculate difference: 8
echo "DSSIM	File" > dssim-8.tsv
FILES="8/300/* 8/600/* 8/1200/*"
for f in $FILES
do
	orig="${f/8\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-8.tsv
done

# calculate difference: 9
echo "DSSIM	File" > dssim-9.tsv
FILES="9/300/* 9/600/* 9/1200/*"
for f in $FILES
do
	orig="${f/9\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-9.tsv
done

# calculate difference: 10
echo "DSSIM	File" > dssim-10.tsv
FILES="10/300/* 10/600/* 10/1200/*"
for f in $FILES
do
	orig="${f/10\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10.tsv
done
