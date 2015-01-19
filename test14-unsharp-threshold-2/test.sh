#!/bin/bash

# setup dir/structure
rm -r 01 02 03 04 06 07 08 09
mkdir 01 02 03 04 06 07 08 09
mkdir 01/300 01/600 01/1200
mkdir 02/300 02/600 02/1200
mkdir 03/300 03/600 03/1200
mkdir 04/300 04/600 04/1200
mkdir 06/300 06/600 06/1200
mkdir 07/300 07/600 07/1200
mkdir 08/300 08/600 08/1200
mkdir 09/300 09/600 09/1200
echo "# Test 14: unsharp threshold 2" > conclusions.md

# resize
mogrify -path 01/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.01 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 01/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.01 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 01/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.01 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 01/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.01 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 01/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.01 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 01/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.01 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 02/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.02 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 02/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.02 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 02/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.02 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 02/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.02 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 02/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.02 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 02/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.02 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 03/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.03 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 03/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.03 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 03/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.03 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 03/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.03 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 03/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.03 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 03/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.03 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 04/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.04 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 04/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.04 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 04/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.04 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 04/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.04 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 04/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.04 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 04/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.04 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 06/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.06 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 06/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.06 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 06/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.06 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 06/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.06 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 06/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.06 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 06/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.06 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 07/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.07 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 07/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.07 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 07/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.07 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 07/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.07 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 07/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.07 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 07/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.07 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 08/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.08 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 08/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.08 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 08/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.08 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 08/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.08 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 08/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.08 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 08/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.08 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 09/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.09 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 09/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00+0.09 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 09/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.09 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 09/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00+0.09 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 09/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.09 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 09/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.09 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg



# optimize
imageoptim -d 01 -q
imageoptim -d 01 -q
imageoptim -d 01 -q

imageoptim -d 02 -q
imageoptim -d 02 -q
imageoptim -d 02 -q

imageoptim -d 03 -q
imageoptim -d 03 -q
imageoptim -d 03 -q

imageoptim -d 04 -q
imageoptim -d 04 -q
imageoptim -d 04 -q

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


# calculate difference: 0.01
echo "DSSIM	File" > dssim-01.tsv
FILES="01/300/*.png 01/600/*.png 01/1200/*.png 01/300/*.jpg 01/600/*.jpg 01/1200/*.jpg"
for f in $FILES
do
	orig="${f/01\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01.tsv
done


# calculate difference: 0.02
echo "DSSIM	File" > dssim-02.tsv
FILES="02/300/*.png 02/600/*.png 02/1200/*.png 02/300/*.jpg 02/600/*.jpg 02/1200/*.jpg"
for f in $FILES
do
	orig="${f/02\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-02.tsv
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
