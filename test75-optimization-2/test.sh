#!/bin/bash

# setup dir/structure
rm -r i_o-IO i_o-picopt IO-i_o IO-picopt picopt-i_o picopt-IO i_o-IO-picopt i_o-picopt-IO IO-i_o-picopt IO-picopt-i_o picopt-i_o-IO picopt-IO-i_o
mkdir i_o-IO i_o-picopt IO-i_o IO-picopt picopt-i_o picopt-IO i_o-IO-picopt i_o-picopt-IO IO-i_o-picopt IO-picopt-i_o picopt-i_o-IO picopt-IO-i_o
mkdir i_o-IO/300 i_o-picopt/300 IO-i_o/300 IO-picopt/300 picopt-i_o/300 picopt-IO/300 i_o-IO-picopt/300 i_o-picopt-IO/300 IO-i_o-picopt/300 IO-picopt-i_o/300 picopt-i_o-IO/300 picopt-IO-i_o/300
mkdir i_o-IO/600 i_o-picopt/600 IO-i_o/600 IO-picopt/600 picopt-i_o/600 picopt-IO/600 i_o-IO-picopt/600 i_o-picopt-IO/600 IO-i_o-picopt/600 IO-picopt-i_o/600 picopt-i_o-IO/600 picopt-IO-i_o/600
mkdir i_o-IO/1200 i_o-picopt/1200 IO-i_o/1200 IO-picopt/1200 picopt-i_o/1200 picopt-IO/1200 i_o-IO-picopt/1200 i_o-picopt-IO/1200 IO-i_o-picopt/1200 IO-picopt-i_o/1200 picopt-i_o-IO/1200 picopt-IO-i_o/1200

echo "# Test 75: optimization 2" > conclusions.md

# resize
mogrify -path i_o-IO/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path i_o-IO/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path i_o-IO/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path i_o-IO/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path i_o-IO/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path i_o-IO/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png

cp -r i_o-IO/* i_o-IO-picopt/
cp -r i_o-IO/* i_o-picopt/
cp -r i_o-IO/* i_o-picopt-IO/
cp -r i_o-IO/* IO-i_o/
cp -r i_o-IO/* IO-i_o-picopt/
cp -r i_o-IO/* IO-picopt/
cp -r i_o-IO/* IO-picopt-i_o/
cp -r i_o-IO/* picopt-i_o/
cp -r i_o-IO/* picopt-i_o-IO/
cp -r i_o-IO/* picopt-IO/
cp -r i_o-IO/* picopt-IO-i_o/


# optimize output
image_optim -r i_o-IO --config-paths i_o.yml
imageoptim -d i_o-IO -q

image_optim -r i_o-IO-picopt --config-paths i_o.yml
imageoptim -d i_o-IO-picopt -q
picopt -r i_o-IO-picopt

image_optim -r i_o-picopt --config-paths i_o.yml
picopt -r i_o-picopt

image_optim -r i_o-picopt-IO --config-paths i_o.yml
picopt -r i_o-picopt-IO
imageoptim -d i_o-picopt-IO -q

imageoptim -d IO-i_o -q
image_optim -r IO-i_o --config-paths i_o.yml

imageoptim -d IO-i_o-picopt -q
image_optim -r IO-i_o-picopt --config-paths i_o.yml
picopt -r IO-i_o-picopt

imageoptim -d IO-picopt -q
picopt -r IO-picopt

imageoptim -d IO-picopt-i_o -q
picopt -r IO-picopt-i_o
image_optim -r IO-picopt-i_o --config-paths i_o.yml

picopt -r picopt-i_o
image_optim -r picopt-i_o --config-paths i_o.yml

picopt -r picopt-i_o-IO
image_optim -r picopt-i_o-IO --config-paths i_o.yml
imageoptim -d picopt-i_o-IO -q

picopt -r picopt-IO
imageoptim -d picopt-IO -q

picopt -r picopt-IO-i_o
imageoptim -d picopt-IO-i_o -q
image_optim -r picopt-IO-i_o --config-paths i_o.yml


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: i_o-IO
echo "DSSIM	File" > dssim-i_o-IO.tsv
FILES="i_o-IO/300/*.png i_o-IO/600/*.png i_o-IO/1200/*.png i_o-IO/300/*.jpg i_o-IO/600/*.jpg i_o-IO/1200/*.jpg"
for f in $FILES
do
	orig="${f/i_o-IO\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-i_o-IO.tsv
done

echo "DSSIM	File" > dssim-i_o-picopt.tsv
FILES="i_o-picopt/300/*.png i_o-picopt/600/*.png i_o-picopt/1200/*.png i_o-picopt/300/*.jpg i_o-picopt/600/*.jpg i_o-picopt/1200/*.jpg"
for f in $FILES
do
	orig="${f/i_o-picopt\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-i_o-picopt.tsv
done

echo "DSSIM	File" > dssim-IO-i_o.tsv
FILES="IO-i_o/300/*.png IO-i_o/600/*.png IO-i_o/1200/*.png IO-i_o/300/*.jpg IO-i_o/600/*.jpg IO-i_o/1200/*.jpg"
for f in $FILES
do
	orig="${f/IO-i_o\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-IO-i_o.tsv
done

echo "DSSIM	File" > dssim-IO-picopt.tsv
FILES="IO-picopt/300/*.png IO-picopt/600/*.png IO-picopt/1200/*.png IO-picopt/300/*.jpg IO-picopt/600/*.jpg IO-picopt/1200/*.jpg"
for f in $FILES
do
	orig="${f/IO-picopt\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-IO-picopt.tsv
done

echo "DSSIM	File" > dssim-picopt-i_o.tsv
FILES="picopt-i_o/300/*.png picopt-i_o/600/*.png picopt-i_o/1200/*.png picopt-i_o/300/*.jpg picopt-i_o/600/*.jpg picopt-i_o/1200/*.jpg"
for f in $FILES
do
	orig="${f/picopt-i_o\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-picopt-i_o.tsv
done

echo "DSSIM	File" > dssim-picopt-IO.tsv
FILES="picopt-IO/300/*.png picopt-IO/600/*.png picopt-IO/1200/*.png picopt-IO/300/*.jpg picopt-IO/600/*.jpg picopt-IO/1200/*.jpg"
for f in $FILES
do
	orig="${f/picopt-IO\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-picopt-IO.tsv
done

echo "DSSIM	File" > dssim-i_o-IO-picopt.tsv
FILES="i_o-IO-picopt/300/*.png i_o-IO-picopt/600/*.png i_o-IO-picopt/1200/*.png i_o-IO-picopt/300/*.jpg i_o-IO-picopt/600/*.jpg i_o-IO-picopt/1200/*.jpg"
for f in $FILES
do
	orig="${f/i_o-IO-picopt\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-i_o-IO-picopt.tsv
done

echo "DSSIM	File" > dssim-i_o-picopt-IO.tsv
FILES="i_o-picopt-IO/300/*.png i_o-picopt-IO/600/*.png i_o-picopt-IO/1200/*.png i_o-picopt-IO/300/*.jpg i_o-picopt-IO/600/*.jpg i_o-picopt-IO/1200/*.jpg"
for f in $FILES
do
	orig="${f/i_o-picopt-IO\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-i_o-picopt-IO.tsv
done

echo "DSSIM	File" > dssim-IO-i_o-picopt.tsv
FILES="IO-i_o-picopt/300/*.png IO-i_o-picopt/600/*.png IO-i_o-picopt/1200/*.png IO-i_o-picopt/300/*.jpg IO-i_o-picopt/600/*.jpg IO-i_o-picopt/1200/*.jpg"
for f in $FILES
do
	orig="${f/IO-i_o-picopt\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-IO-i_o-picopt.tsv
done

echo "DSSIM	File" > dssim-IO-picopt-i_o.tsv
FILES="IO-picopt-i_o/300/*.png IO-picopt-i_o/600/*.png IO-picopt-i_o/1200/*.png IO-picopt-i_o/300/*.jpg IO-picopt-i_o/600/*.jpg IO-picopt-i_o/1200/*.jpg"
for f in $FILES
do
	orig="${f/IO-picopt-i_o\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-IO-picopt-i_o.tsv
done

echo "DSSIM	File" > dssim-picopt-i_o-IO.tsv
FILES="picopt-i_o-IO/300/*.png picopt-i_o-IO/600/*.png picopt-i_o-IO/1200/*.png picopt-i_o-IO/300/*.jpg picopt-i_o-IO/600/*.jpg picopt-i_o-IO/1200/*.jpg"
for f in $FILES
do
	orig="${f/picopt-i_o-IO\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-picopt-i_o-IO.tsv
done

echo "DSSIM	File" > dssim-picopt-IO-i_o.tsv
FILES="picopt-IO-i_o/300/*.png picopt-IO-i_o/600/*.png picopt-IO-i_o/1200/*.png picopt-IO-i_o/300/*.jpg picopt-IO-i_o/600/*.jpg picopt-IO-i_o/1200/*.jpg"
for f in $FILES
do
	orig="${f/picopt-IO-i_o\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-picopt-IO-i_o.tsv
done

