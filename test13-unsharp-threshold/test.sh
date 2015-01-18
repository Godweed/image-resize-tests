#!/bin/bash

# setup dir/structure
rm -r 00 05 10 15 20 25
mkdir 00 05 10 15 20 25
mkdir 00/300 00/600 00/1200
mkdir 05/300 05/600 05/1200
mkdir 10/300 10/600 10/1200
mkdir 15/300 15/600 15/1200
mkdir 20/300 20/600 20/1200
mkdir 25/300 25/600 25/1200
echo "# Test 13: unsharp threshold" > conclusions.md

# resize
mogrify -path 00/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 00/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 00/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 05/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.05 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 05/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.05 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 05/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.05 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 05/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.05 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 05/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.05 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 05/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.05 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 10/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.10 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 10/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.10 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 10/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.10 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 10/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.10 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 10/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.10 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 10/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.10 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 15/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.15 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 15/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.15 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 15/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.15 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 15/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.15 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 15/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.15 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 15/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.15 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 20/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.20 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 20/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.20 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 20/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.20 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 20/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.20 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 20/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.20 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 20/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.20 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 25/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 25/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 25/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 25/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 25/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 25/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg



# optimize
imageoptim -d 00 -q
imageoptim -d 00 -q
imageoptim -d 00 -q

imageoptim -d 05 -q
imageoptim -d 05 -q
imageoptim -d 05 -q

imageoptim -d 10 -q
imageoptim -d 10 -q
imageoptim -d 10 -q

imageoptim -d 15 -q
imageoptim -d 15 -q
imageoptim -d 15 -q

imageoptim -d 20 -q
imageoptim -d 20 -q
imageoptim -d 20 -q

imageoptim -d 25 -q
imageoptim -d 25 -q
imageoptim -d 25 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 0.00
echo "DSSIM	File" > dssim-00.tsv
FILES="00/300/*.png 00/600/*.png 00/1200/*.png 00/300/*.jpg 00/600/*.jpg 00/1200/*.jpg"
for f in $FILES
do
	orig="${f/00\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-00.tsv
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


# calculate difference: 0.10
echo "DSSIM	File" > dssim-10.tsv
FILES="10/300/*.png 10/600/*.png 10/1200/*.png 10/300/*.jpg 10/600/*.jpg 10/1200/*.jpg"
for f in $FILES
do
	orig="${f/10\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10.tsv
done


# calculate difference: 0.15
echo "DSSIM	File" > dssim-15.tsv
FILES="15/300/*.png 15/600/*.png 15/1200/*.png 15/300/*.jpg 15/600/*.jpg 15/1200/*.jpg"
for f in $FILES
do
	orig="${f/15\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-15.tsv
done


# calculate difference: 0.20
echo "DSSIM	File" > dssim-20.tsv
FILES="20/300/*.png 20/600/*.png 20/1200/*.png 20/300/*.jpg 20/600/*.jpg 20/1200/*.jpg"
for f in $FILES
do
	orig="${f/20\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-20.tsv
done


# calculate difference: 0.25
echo "DSSIM	File" > dssim-25.tsv
FILES="25/300/*.png 25/600/*.png 25/1200/*.png 25/300/*.jpg 25/600/*.jpg 25/1200/*.jpg"
for f in $FILES
do
	orig="${f/25\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-25.tsv
done
