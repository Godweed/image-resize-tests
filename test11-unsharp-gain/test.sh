#!/bin/bash

# setup dir/structure
rm -r 000 025 050 075 100 125 150 175 200
mkdir 000 025 050 075 100 125 150 175 200
mkdir 000/300 000/600 000/1200
mkdir 025/300 025/600 025/1200
mkdir 050/300 050/600 050/1200
mkdir 075/300 075/600 075/1200
mkdir 100/300 100/600 100/1200
mkdir 125/300 125/600 125/1200
mkdir 150/300 150/600 150/1200
mkdir 175/300 175/600 175/1200
mkdir 200/300 200/600 200/1200
echo "# Test 11: unsharp gain" > conclusions.md

# resize
mogrify -path 000/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 000/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 000/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 000/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 000/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 000/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 025/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 025/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 025/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 025/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 025/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 025/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 050/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 050/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 050/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 050/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 050/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 050/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 075/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 075/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 075/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 075/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 075/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 075/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 125/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 125/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 125/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 125/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 125/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 125/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 150/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 150/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 150/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 150/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 150/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 150/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 175/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 175/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 175/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 175/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 175/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 175/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 200/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 200/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 200/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 200/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 200/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 200/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg


# optimize
imageoptim -d 000 -q
imageoptim -d 000 -q
imageoptim -d 000 -q

imageoptim -d 025 -q
imageoptim -d 025 -q
imageoptim -d 025 -q

imageoptim -d 050 -q
imageoptim -d 050 -q
imageoptim -d 050 -q

imageoptim -d 075 -q
imageoptim -d 075 -q
imageoptim -d 075 -q

imageoptim -d 100 -q
imageoptim -d 100 -q
imageoptim -d 100 -q

imageoptim -d 125 -q
imageoptim -d 125 -q
imageoptim -d 125 -q

imageoptim -d 150 -q
imageoptim -d 150 -q
imageoptim -d 150 -q

imageoptim -d 175 -q
imageoptim -d 175 -q
imageoptim -d 175 -q

imageoptim -d 200 -q
imageoptim -d 200 -q
imageoptim -d 200 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 0.0
echo "DSSIM	File" > dssim-000.tsv
FILES="000/300/*.png 000/600/*.png 000/1200/*.png 000/300/*.jpg 000/600/*.jpg 000/1200/*.jpg"
for f in $FILES
do
	orig="${f/000\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-000.tsv
done


# calculate difference: 0.25
echo "DSSIM	File" > dssim-025.tsv
FILES="025/300/*.png 025/600/*.png 025/1200/*.png 025/300/*.jpg 025/600/*.jpg 025/1200/*.jpg"
for f in $FILES
do
	orig="${f/025\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-025.tsv
done


# calculate difference: 0.5
echo "DSSIM	File" > dssim-050.tsv
FILES="050/300/*.png 050/600/*.png 050/1200/*.png 050/300/*.jpg 050/600/*.jpg 050/1200/*.jpg"
for f in $FILES
do
	orig="${f/050\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-050.tsv
done


# calculate difference: 0.75
echo "DSSIM	File" > dssim-075.tsv
FILES="075/300/*.png 075/600/*.png 075/1200/*.png 075/300/*.jpg 075/600/*.jpg 075/1200/*.jpg"
for f in $FILES
do
	orig="${f/075\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-075.tsv
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


# calculate difference: 1.25
echo "DSSIM	File" > dssim-125.tsv
FILES="125/300/*.png 125/600/*.png 125/1200/*.png 125/300/*.jpg 125/600/*.jpg 125/1200/*.jpg"
for f in $FILES
do
	orig="${f/125\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-125.tsv
done


# calculate difference: 1.5
echo "DSSIM	File" > dssim-150.tsv
FILES="150/300/*.png 150/600/*.png 150/1200/*.png 150/300/*.jpg 150/600/*.jpg 150/1200/*.jpg"
for f in $FILES
do
	orig="${f/150\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-150.tsv
done


# calculate difference: 1.75
echo "DSSIM	File" > dssim-175.tsv
FILES="175/300/*.png 175/600/*.png 175/1200/*.png 175/300/*.jpg 175/600/*.jpg 175/1200/*.jpg"
for f in $FILES
do
	orig="${f/175\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-175.tsv
done


# calculate difference: 2.0
echo "DSSIM	File" > dssim-200.tsv
FILES="200/300/*.png 200/600/*.png 200/1200/*.png 200/300/*.jpg 200/600/*.jpg 200/1200/*.jpg"
for f in $FILES
do
	orig="${f/200\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-200.tsv
done
