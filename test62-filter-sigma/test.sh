#!/bin/bash

# setup dir/structure
rm -r default 0000 0250 0500 0707 0750 1000
mkdir default 0000 0250 0500 0707 0750 1000
mkdir default/300 0000/300 0250/300 0500/300 0707/300 0750/300 1000/300
mkdir default/600 0000/600 0250/600 0500/600 0707/600 0750/600 1000/600
mkdir default/1200 0000/1200 0250/1200 0500/1200 0707/1200 0750/1200 1000/1200

echo "# Test 62: filter:sigma" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0000/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.000 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0000/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.000 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0000/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.000 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0000/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.000 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0000/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.000 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0000/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.000 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0250/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.250 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0250/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.250 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0250/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.250 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0250/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.250 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0250/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.250 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0250/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.250 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0500/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.500 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0500/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.500 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0500/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.500 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0500/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.500 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0500/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.500 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0500/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.500 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0707/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.707 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0707/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.707 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0707/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.707 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0707/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.707 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0707/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.707 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0707/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.707 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0750/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.750 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0750/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.750 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0750/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.750 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0750/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.750 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0750/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.750 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0750/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=0.750 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 1000/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=1.000 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 1000/300 -filter Triangle -define filter:support=2.0 -define filter:sigma=1.000 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 1000/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=1.000 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 1000/600 -filter Triangle -define filter:support=2.0 -define filter:sigma=1.000 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 1000/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=1.000 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 1000/1200 -filter Triangle -define filter:support=2.0 -define filter:sigma=1.000 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 0000 -q
imageoptim -d 0000 -q
imageoptim -d 0000 -q

imageoptim -d 0250 -q
imageoptim -d 0250 -q
imageoptim -d 0250 -q

imageoptim -d 0500 -q
imageoptim -d 0500 -q
imageoptim -d 0500 -q

imageoptim -d 0707 -q
imageoptim -d 0707 -q
imageoptim -d 0707 -q

imageoptim -d 0750 -q
imageoptim -d 0750 -q
imageoptim -d 0750 -q

imageoptim -d 1000 -q
imageoptim -d 1000 -q
imageoptim -d 1000 -q


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

# calculate difference: 0000
echo "DSSIM	File" > dssim-0000.tsv
FILES="0000/300/* 0000/600/* 0000/1200/*"
for f in $FILES
do
	orig="${f/0000\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0000.tsv
done

# calculate difference: 0250
echo "DSSIM	File" > dssim-0250.tsv
FILES="0250/300/* 0250/600/* 0250/1200/*"
for f in $FILES
do
	orig="${f/0250\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0250.tsv
done

# calculate difference: 0500
echo "DSSIM	File" > dssim-0500.tsv
FILES="0500/300/* 0500/600/* 0500/1200/*"
for f in $FILES
do
	orig="${f/0500\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0500.tsv
done

# calculate difference: 0707
echo "DSSIM	File" > dssim-0707.tsv
FILES="0707/300/* 0707/600/* 0707/1200/*"
for f in $FILES
do
	orig="${f/0707\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0707.tsv
done

# calculate difference: 0750
echo "DSSIM	File" > dssim-0750.tsv
FILES="0750/300/* 0750/600/* 0750/1200/*"
for f in $FILES
do
	orig="${f/0750\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0750.tsv
done

# calculate difference: 1000
echo "DSSIM	File" > dssim-1000.tsv
FILES="1000/300/* 1000/600/* 1000/1200/*"
for f in $FILES
do
	orig="${f/1000\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1000.tsv
done
