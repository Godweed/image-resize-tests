#!/bin/bash


# setup dir/structure
rm -r 10 20 30 40 50 60 70 80 90 100
mkdir 10 20 30 40 50 60 70 80 90 100
mkdir 10/300 10/600 10/1200
mkdir 20/300 20/600 20/1200
mkdir 30/300 30/600 30/1200
mkdir 40/300 40/600 40/1200
mkdir 50/300 50/600 50/1200
mkdir 60/300 60/600 60/1200
mkdir 70/300 70/600 70/1200
mkdir 80/300 80/600 80/1200
mkdir 90/300 90/600 90/1200
mkdir 100/300 100/600 100/1200
echo "# Test 4: JPEG quality" > conclusions.md

# resize
mogrify -path 10/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 10 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 10/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 10 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 10/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 10 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 20/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 20 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 20/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 20 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 20/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 20 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 30/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 30 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 30/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 30 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 30/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 30 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 40/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 40 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 40/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 40 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 40/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 40 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 50/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 50 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 50/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 50 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 50/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 50 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 60/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 60/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 60/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 70/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 70 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 70/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 70 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 70/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 70 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 80/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 80 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 80/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 80 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 80/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 80 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 90/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 90 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 90/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 90 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 90/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 90 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 100 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 100 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 100 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg


#!/bin/bash
# optimize
imageoptim -d . -q
imageoptim -d . -q
imageoptim -d . -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 10
echo "DSSIM	File" > dssim-10.tsv
FILES="10/300/*.jpg 10/600/*.jpg 10/1200/*.jpg"
for f in $FILES
do
	orig="${f/10\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10.tsv
done


# calculate difference: 20
echo "DSSIM	File" > dssim-20.tsv
FILES="20/300/*.jpg 20/600/*.jpg 20/1200/*.jpg"
for f in $FILES
do
	orig="${f/20\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-20.tsv
done


# calculate difference: 30
echo "DSSIM	File" > dssim-30.tsv
FILES="30/300/*.jpg 30/600/*.jpg 30/1200/*.jpg"
for f in $FILES
do
	orig="${f/30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-30.tsv
done


# calculate difference: 40
echo "DSSIM	File" > dssim-40.tsv
FILES="40/300/*.jpg 40/600/*.jpg 40/1200/*.jpg"
for f in $FILES
do
	orig="${f/40\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-40.tsv
done


# calculate difference: 50
echo "DSSIM	File" > dssim-50.tsv
FILES="50/300/*.jpg 50/600/*.jpg 50/1200/*.jpg"
for f in $FILES
do
	orig="${f/50\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-50.tsv
done


# calculate difference: 60
echo "DSSIM	File" > dssim-60.tsv
FILES="60/300/*.jpg 60/600/*.jpg 60/1200/*.jpg"
for f in $FILES
do
	orig="${f/60\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-60.tsv
done


# calculate difference: 70
echo "DSSIM	File" > dssim-70.tsv
FILES="70/300/*.jpg 70/600/*.jpg 70/1200/*.jpg"
for f in $FILES
do
	orig="${f/70\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-70.tsv
done


# calculate difference: 80
echo "DSSIM	File" > dssim-80.tsv
FILES="80/300/*.jpg 80/600/*.jpg 80/1200/*.jpg"
for f in $FILES
do
	orig="${f/80\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-80.tsv
done


# calculate difference: 90
echo "DSSIM	File" > dssim-90.tsv
FILES="90/300/*.jpg 90/600/*.jpg 90/1200/*.jpg"
for f in $FILES
do
	orig="${f/90\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-90.tsv
done


# calculate difference: 100
echo "DSSIM	File" > dssim-100.tsv
FILES="100/300/*.jpg 100/600/*.jpg 100/1200/*.jpg"
for f in $FILES
do
	orig="${f/100\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-100.tsv
done


