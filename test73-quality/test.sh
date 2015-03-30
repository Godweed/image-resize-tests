#!/bin/bash

# setup dir/structure
rm -r default 81 80 79
mkdir default 81 80 79
mkdir default/300 81/300 80/300 79/300
mkdir default/600 81/600 80/600 79/600
mkdir default/1200 81/1200 80/1200 79/1200

echo "# Test 73: quality" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 81/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 81 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 81/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 81 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 81/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 81 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 81/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 81 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 81/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 81 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 81/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 81 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 80/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 80 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 80/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 80 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 80/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 80 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 80/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 80 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 80/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 80 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 80/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 80 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 79/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 79 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 79/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 79 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 79/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 79 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 79/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 79 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 79/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 79 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 79/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 79 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 81 -q
imageoptim -d 81 -q
imageoptim -d 81 -q

imageoptim -d 80 -q
imageoptim -d 80 -q
imageoptim -d 80 -q

imageoptim -d 79 -q
imageoptim -d 79 -q
imageoptim -d 79 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default
echo "DSSIM	File" > dssim-default.tsv
FILES="default/300/*.png default/600/*.png default/1200/*.png default/300/*.jpg default/600/*.jpg default/1200/*.jpg"
for f in $FILES
do
	orig="${f/default\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default.tsv
done


# calculate difference: 81
echo "DSSIM	File" > dssim-81.tsv
FILES="81/300/*.png 81/600/*.png 81/1200/*.png 81/300/*.jpg 81/600/*.jpg 81/1200/*.jpg"
for f in $FILES
do
	orig="${f/81\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-81.tsv
done


# calculate difference: 80
echo "DSSIM	File" > dssim-80.tsv
FILES="80/300/*.png 80/600/*.png 80/1200/*.png 80/300/*.jpg 80/600/*.jpg 80/1200/*.jpg"
for f in $FILES
do
	orig="${f/80\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-80.tsv
done


# calculate difference: 79
echo "DSSIM	File" > dssim-79.tsv
FILES="79/300/*.png 79/600/*.png 79/1200/*.png 79/300/*.jpg 79/600/*.jpg 79/1200/*.jpg"
for f in $FILES
do
	orig="${f/79\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-79.tsv
done
