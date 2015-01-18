#!/bin/bash

# setup dir/structure
rm -r 30 40 50 60 70 80 90 100
mkdir 30 40 50 60 70 80 90 100
mkdir 30/300 30/600 30/1200
mkdir 40/300 40/600 40/1200
mkdir 50/300 50/600 50/1200
mkdir 60/300 60/600 60/1200
mkdir 70/300 70/600 70/1200
mkdir 80/300 80/600 80/1200
mkdir 90/300 90/600 90/1200
mkdir 100/300 100/600 100/1200
echo "# Test 12: unsharp gain 2" > conclusions.md

# resize
mogrify -path 30/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 30/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 30/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 30/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 30/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 30/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 40/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 40/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 40/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 40/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 40/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 40/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 50/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 50/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 50/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 50/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 50/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 50/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 60/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 60/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 60/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 60/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 60/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 60/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 70/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 70/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 70/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 70/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 70/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 70/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 80/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 80/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 80/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 80/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 80/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 80/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 90/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 90/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 90/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 90/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 90/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 90/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg


# optimize
imageoptim -d 30 -q
imageoptim -d 30 -q
imageoptim -d 30 -q

imageoptim -d 40 -q
imageoptim -d 40 -q
imageoptim -d 40 -q

imageoptim -d 50 -q
imageoptim -d 50 -q
imageoptim -d 50 -q

imageoptim -d 60 -q
imageoptim -d 60 -q
imageoptim -d 60 -q

imageoptim -d 70 -q
imageoptim -d 70 -q
imageoptim -d 70 -q

imageoptim -d 80 -q
imageoptim -d 80 -q
imageoptim -d 80 -q

imageoptim -d 90 -q
imageoptim -d 90 -q
imageoptim -d 90 -q

imageoptim -d 100 -q
imageoptim -d 100 -q
imageoptim -d 100 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 3.0
echo "DSSIM	File" > dssim-30.tsv
FILES="30/300/*.png 30/600/*.png 30/1200/*.png 30/300/*.jpg 30/600/*.jpg 30/1200/*.jpg"
for f in $FILES
do
	orig="${f/30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-30.tsv
done


# calculate difference: 4.0
echo "DSSIM	File" > dssim-40.tsv
FILES="40/300/*.png 40/600/*.png 40/1200/*.png 40/300/*.jpg 40/600/*.jpg 40/1200/*.jpg"
for f in $FILES
do
	orig="${f/40\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-40.tsv
done


# calculate difference: 5.0
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


# calculate difference: 6.0
echo "DSSIM	File" > dssim-60.tsv
FILES="60/300/*.png 60/600/*.png 60/1200/*.png 60/300/*.jpg 60/600/*.jpg 60/1200/*.jpg"
for f in $FILES
do
	orig="${f/60\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-60.tsv
done


# calculate difference: 7.0
echo "DSSIM	File" > dssim-70.tsv
FILES="70/300/*.png 70/600/*.png 70/1200/*.png 70/300/*.jpg 70/600/*.jpg 70/1200/*.jpg"
for f in $FILES
do
	orig="${f/70\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-70.tsv
done


# calculate difference: 8.0
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


# calculate difference: 9.0
echo "DSSIM	File" > dssim-90.tsv
FILES="90/300/*.png 90/600/*.png 90/1200/*.png 90/300/*.jpg 90/600/*.jpg 90/1200/*.jpg"
for f in $FILES
do
	orig="${f/90\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-90.tsv
done


# calculate difference: 10.0
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
