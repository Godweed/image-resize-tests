#!/bin/bash

# setup dir/structure
rm -r default 06 07 08 09 11 12 13 14
mkdir default 06 07 08 09 11 12 13 14
mkdir default/300 06/300 07/300 08/300 09/300 11/300 12/300 13/300 14/300
mkdir default/600 06/600 07/600 08/600 09/600 11/600 12/600 13/600 14/600
mkdir default/1200 06/1200 07/1200 08/1200 09/1200 11/1200 12/1200 13/1200 14/1200

echo "# Test 65: unsharp sigma 3" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 06/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 06/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 06/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 07/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.07+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.07+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 07/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.07+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.07+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 07/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.07+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.07+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 08/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 08/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 08/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 09/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.09+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.09+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 09/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.09+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.09+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 09/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.09+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.09+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 11/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.06+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 11/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.11+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 11/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.11+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 11/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.11+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 11/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.11+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 11/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.11+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 12/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.12+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 12/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.12+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 12/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.12+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 12/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.12+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 12/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.12+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 12/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.12+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 13/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.13+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 13/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.13+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 13/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.13+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 13/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.13+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 13/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.13+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 13/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.13+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 14/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.14+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 14/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.14+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 14/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.14+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 14/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.14+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 14/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.14+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 14/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.14+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 06 -q
imageoptim -d 06 -q
imageoptim -d 06 -q

imageoptim -d 07 -q
imageoptim -d 07 -q
imageoptim -d 07 -q

imageoptim -d 08 -q
imageoptim -d 08 -q
imageoptim -d 08 -q

imageoptim -d 09 -q
imageoptim -d 09 -q
imageoptim -d 09 -q

imageoptim -d 11 -q
imageoptim -d 11 -q
imageoptim -d 11 -q

imageoptim -d 12 -q
imageoptim -d 12 -q
imageoptim -d 12 -q

imageoptim -d 13 -q
imageoptim -d 13 -q
imageoptim -d 13 -q

imageoptim -d 14 -q
imageoptim -d 14 -q
imageoptim -d 14 -q


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


# calculate difference: 0.06
echo "DSSIM	File" > dssim-06.tsv
FILES="06/300/*.png 06/600/*.png 06/1200/*.png 06/300/*.jpg 06/600/*.jpg 06/1200/*.jpg"
for f in $FILES
do
	orig="${f/06\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-06.tsv
done


# calculate difference: 0.07
echo "DSSIM	File" > dssim-07.tsv
FILES="07/300/*.png 07/600/*.png 07/1200/*.png 07/300/*.jpg 07/600/*.jpg 07/1200/*.jpg"
for f in $FILES
do
	orig="${f/07\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-07.tsv
done


# calculate difference: 0.08
echo "DSSIM	File" > dssim-08.tsv
FILES="08/300/*.png 08/600/*.png 08/1200/*.png 08/300/*.jpg 08/600/*.jpg 08/1200/*.jpg"
for f in $FILES
do
	orig="${f/08\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-08.tsv
done


# calculate difference: 0.09
echo "DSSIM	File" > dssim-09.tsv
FILES="09/300/*.png 09/600/*.png 09/1200/*.png 09/300/*.jpg 09/600/*.jpg 09/1200/*.jpg"
for f in $FILES
do
	orig="${f/09\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-09.tsv
done


# calculate difference: 0.11
echo "DSSIM	File" > dssim-11.tsv
FILES="11/300/*.png 11/600/*.png 11/1200/*.png 11/300/*.jpg 11/600/*.jpg 11/1200/*.jpg"
for f in $FILES
do
	orig="${f/11\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-11.tsv
done


# calculate difference: 0.12
echo "DSSIM	File" > dssim-12.tsv
FILES="12/300/*.png 12/600/*.png 12/1200/*.png 12/300/*.jpg 12/600/*.jpg 12/1200/*.jpg"
for f in $FILES
do
	orig="${f/12\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-12.tsv
done


# calculate difference: 0.13
echo "DSSIM	File" > dssim-13.tsv
FILES="13/300/*.png 13/600/*.png 13/1200/*.png 13/300/*.jpg 13/600/*.jpg 13/1200/*.jpg"
for f in $FILES
do
	orig="${f/13\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-13.tsv
done


# calculate difference: 0.14
echo "DSSIM	File" > dssim-14.tsv
FILES="14/300/*.png 14/600/*.png 14/1200/*.png 14/300/*.jpg 14/600/*.jpg 14/1200/*.jpg"
for f in $FILES
do
	orig="${f/14\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-14.tsv
done
