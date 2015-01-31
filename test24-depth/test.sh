#!/bin/bash

# setup dir/structure
rm -r 1 2 4 8 16 32 64 none
mkdir 1 2 4 8 16 32 64 none
mkdir 1/300 2/300 4/300 8/300 16/300 32/300 64/300 none/300
mkdir 1/600 2/600 4/600 8/600 16/600 32/600 64/600 none/600
mkdir 1/1200 2/1200 4/1200 8/1200 16/1200 32/1200 64/1200 none/1200

echo "# Test 24: depth" > conclusions.md

# resize
mogrify -path 1/300 -depth 1 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 1/300 -depth 1 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 1/600 -depth 1 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 1/600 -depth 1 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 1/1200 -depth 1 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 1/1200 -depth 1 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path 2/300 -depth 2 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 2/300 -depth 2 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 2/600 -depth 2 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 2/600 -depth 2 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 2/1200 -depth 2 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 2/1200 -depth 2 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path 4/300 -depth 4 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 4/300 -depth 4 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 4/600 -depth 4 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 4/600 -depth 4 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 4/1200 -depth 4 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 4/1200 -depth 4 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path 8/300 -depth 8 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 8/300 -depth 8 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 8/600 -depth 8 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 8/600 -depth 8 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 8/1200 -depth 8 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 8/1200 -depth 8 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path 16/300 -depth 16 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 16/300 -depth 16 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 16/600 -depth 16 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 16/600 -depth 16 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 16/1200 -depth 16 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 16/1200 -depth 16 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path 32/300 -depth 32 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 32/300 -depth 32 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 32/600 -depth 32 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 32/600 -depth 32 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 32/1200 -depth 32 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 32/1200 -depth 32 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path 64/300 -depth 64 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 64/300 -depth 64 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 64/600 -depth 64 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 64/600 -depth 64 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path 64/1200 -depth 64 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path 64/1200 -depth 64 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d 1 -q
imageoptim -d 1 -q
imageoptim -d 1 -q

imageoptim -d 2 -q
imageoptim -d 2 -q
imageoptim -d 2 -q

imageoptim -d 4 -q
imageoptim -d 4 -q
imageoptim -d 4 -q

imageoptim -d 8 -q
imageoptim -d 8 -q
imageoptim -d 8 -q

imageoptim -d 16 -q
imageoptim -d 16 -q
imageoptim -d 16 -q

imageoptim -d 32 -q
imageoptim -d 32 -q
imageoptim -d 32 -q

imageoptim -d 64 -q
imageoptim -d 64 -q
imageoptim -d 64 -q

imageoptim -d none -q
imageoptim -d none -q
imageoptim -d none -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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


# calculate difference: 16
echo "DSSIM	File" > dssim-16.tsv
FILES="16/300/* 16/600/* 16/1200/*"
for f in $FILES
do
	orig="${f/16\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-16.tsv
done


# calculate difference: 32
echo "DSSIM	File" > dssim-32.tsv
FILES="32/300/* 32/600/* 32/1200/*"
for f in $FILES
do
	orig="${f/32\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-32.tsv
done


# calculate difference: 64
echo "DSSIM	File" > dssim-64.tsv
FILES="64/300/* 64/600/* 64/1200/*"
for f in $FILES
do
	orig="${f/64\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-64.tsv
done


# calculate difference: none
echo "DSSIM	File" > dssim-none.tsv
FILES="none/300/* none/600/* none/1200/*"
for f in $FILES
do
	orig="${f/none\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-none.tsv
done
