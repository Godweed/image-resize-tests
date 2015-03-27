#!/bin/bash

# setup dir/structure
rm -r default 03 04 05 06 07 08 09
mkdir default 03 04 05 06 07 08 09
mkdir default/300 03/300 04/300 05/300 06/300 07/300 08/300 09/300
mkdir default/600 03/600 04/600 05/600 06/600 07/600 08/600 09/600
mkdir default/1200 03/1200 04/1200 05/1200 06/1200 07/1200 08/1200 09/1200

echo "# Test 68: unsharp treshold 3" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 03/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.03 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 03/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.03 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 03/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.03 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 03/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.03 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 03/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.03 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 03/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.03 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 04/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.04 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 04/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.04 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 04/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.04 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 04/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.04 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 04/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.04 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 04/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.04 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 05/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.05 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 05/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.05 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 05/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.05 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 05/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.05 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 05/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.05 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 05/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.05 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 06/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.06 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.06 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 06/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.06 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.06 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 06/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.06 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.06 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 07/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.07 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.07 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 07/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.07 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.07 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 07/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.07 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.07 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 08/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.08 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.08 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 08/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.08 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.08 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 08/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.08 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.08 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 09/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.09 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.09 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 09/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.09 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.09 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 09/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.09 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.09 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 03 -q
imageoptim -d 03 -q
imageoptim -d 03 -q

imageoptim -d 04 -q
imageoptim -d 04 -q
imageoptim -d 04 -q

imageoptim -d 05 -q
imageoptim -d 05 -q
imageoptim -d 05 -q

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


# calculate difference: 0.03
echo "DSSIM	File" > dssim-03.tsv
FILES="03/300/*.png 03/600/*.png 03/1200/*.png 03/300/*.jpg 03/600/*.jpg 03/1200/*.jpg"
for f in $FILES
do
	orig="${f/03\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-03.tsv
done


# calculate difference: 0.04
echo "DSSIM	File" > dssim-04.tsv
FILES="04/300/*.png 04/600/*.png 04/1200/*.png 04/300/*.jpg 04/600/*.jpg 04/1200/*.jpg"
for f in $FILES
do
	orig="${f/04\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-04.tsv
done


# calculate difference: 0.05
echo "DSSIM	File" > dssim-05.tsv
FILES="05/300/*.png 05/600/*.png 05/1200/*.png 05/300/*.jpg 05/600/*.jpg 05/1200/*.jpg"
for f in $FILES
do
	orig="${f/05\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-05.tsv
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
