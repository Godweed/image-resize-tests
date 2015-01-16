#!/bin/bash

# setup dir/structure
rm -r 00 25 50 75 100
mkdir 00 25 50 75 100
mkdir 00/300 00/600 00/1200
mkdir 25/300 25/600 25/1200
mkdir 50/300 50/600 50/1200
mkdir 75/300 75/600 75/1200
mkdir 100/300 100/600 100/1200
echo "# Test 10: unsharp sigma" > conclusions.md

# resize
mogrify -path 00/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 00/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 00/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 25/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 25/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 25/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 25/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 25/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 25/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 50/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 50/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 50/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 50/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 50/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 50/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 75/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 75/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 75/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 75/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 75/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 75/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg


# optimize
imageoptim -d 00 -q
imageoptim -d 00 -q
imageoptim -d 00 -q

imageoptim -d 25 -q
imageoptim -d 25 -q
imageoptim -d 25 -q

imageoptim -d 50 -q
imageoptim -d 50 -q
imageoptim -d 50 -q

imageoptim -d 75 -q
imageoptim -d 75 -q
imageoptim -d 75 -q

imageoptim -d 100 -q
imageoptim -d 100 -q
imageoptim -d 100 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 0.0
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


# calculate difference: 0.5
echo "DSSIM	File" > dssim-50.tsv
FILES="50/300/*.png 50/600/*.png 50/1200/*.png 50/300/*.jpg 50/600/*.jpg 50/1200/*.jpg"
for f in $FILES
do
	orig="${f/50\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-50.tsv
done


# calculate difference: 0.75
echo "DSSIM	File" > dssim-75.tsv
FILES="75/300/*.png 75/600/*.png 75/1200/*.png 75/300/*.jpg 75/600/*.jpg 75/1200/*.jpg"
for f in $FILES
do
	orig="${f/75\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-75.tsv
done


# calculate difference: 1.0
echo "DSSIM	File" > dssim-100.tsv
FILES="100/300/*.png 100/600/*.png 100/1200/*.png 100/300/*.jpg 100/600/*.jpg 100/1200/*.jpg"
for f in $FILES
do
	orig="${f/100\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-100.tsv
done
