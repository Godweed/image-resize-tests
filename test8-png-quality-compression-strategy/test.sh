#!/bin/bash


# setup dir/structure
rm -r 0 1 2 3 4
mkdir 0 1 2 3 4
mkdir 0/300 0/600 0/1200
mkdir 1/300 1/600 1/1200
mkdir 2/300 2/600 2/1200
mkdir 3/300 3/600 3/1200
mkdir 4/300 4/600 4/1200
echo "# Test 8: PNG quality — compression-strategy" > conclusions.md

# resize
mogrify -path 0/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=0 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 0/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=0 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 0/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=0 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png

mogrify -path 1/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 1/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 1/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png

mogrify -path 2/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 2/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 2/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png

mogrify -path 3/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=3 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 3/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=3 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 3/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=3 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png

mogrify -path 4/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=4 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 4/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=4 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 4/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=4 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png


#!/bin/bash
# optimize
imageoptim -d . -q
imageoptim -d . -q
imageoptim -d . -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 0
echo "DSSIM	File" > dssim-0.tsv
FILES="0/300/*.png 0/600/*.png 0/1200/*.png"
for f in $FILES
do
	orig="${f/0\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0.tsv
done


# calculate difference: 1
echo "DSSIM	File" > dssim-1.tsv
FILES="1/300/*.png 1/600/*.png 1/1200/*.png"
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
FILES="2/300/*.png 2/600/*.png 2/1200/*.png"
for f in $FILES
do
	orig="${f/2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2.tsv
done


# calculate difference: 3
echo "DSSIM	File" > dssim-3.tsv
FILES="3/300/*.png 3/600/*.png 3/1200/*.png"
for f in $FILES
do
	orig="${f/3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-3.tsv
done


# calculate difference: 4
echo "DSSIM	File" > dssim-4.tsv
FILES="4/300/*.png 4/600/*.png 4/1200/*.png"
for f in $FILES
do
	orig="${f/4\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-4.tsv
done
