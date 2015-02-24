#!/bin/bash

# setup dir/structure
rm -r method1 method2 method3 none
mkdir method1 method2 method3 none
mkdir method1/300 method2/300 method3/300 none/300
mkdir method1/600 method2/600 method3/600 none/600
mkdir method1/1200 method2/1200 method3/1200 none/1200

echo "# Test 25: dirty transparency" > conclusions.md

# resize
# no clone in mogrify
FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"
	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 \( -clone 0 -alpha extract \) \( -clone 0 -clone 1 -compose multiply -composite \) -delete 0 +swap -alpha off -compose copy_opacity -composite -depth 8 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB method1/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 \( -clone 0 -alpha extract \) \( -clone 0 -clone 1 -compose multiply -composite \) -delete 0 +swap -alpha off -compose copy_opacity -composite -depth 8 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB method1/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 \( -clone 0 -alpha extract \) \( -clone 0 -clone 1 -compose multiply -composite \) -delete 0 +swap -alpha off -compose copy_opacity -composite -depth 8 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB method1/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"
	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 \( -clone 0 -alpha extract \) \( -clone 0 -clone 1 -compose multiply -composite \) -delete 0 +swap -alpha off -compose copy_opacity -composite -define png:color-type=2 -define png:bit-depth=8 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB method2/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 \( -clone 0 -alpha extract \) \( -clone 0 -clone 1 -compose multiply -composite \) -delete 0 +swap -alpha off -compose copy_opacity -composite -define png:color-type=2 -define png:bit-depth=8 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB method2/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 \( -clone 0 -alpha extract \) \( -clone 0 -clone 1 -compose multiply -composite \) -delete 0 +swap -alpha off -compose copy_opacity -composite -define png:color-type=2 -define png:bit-depth=8 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB method2/1200/$fn
done

mogrify -path method3/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path method3/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path method3/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path method3/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path method3/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path method3/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: method1
echo "DSSIM	File" > dssim-method1.tsv
FILES="method1/300/* method1/600/* method1/1200/*"
for f in $FILES
do
	orig="${f/method1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-method1.tsv
done


# calculate difference: method2
echo "DSSIM	File" > dssim-method2.tsv
FILES="method2/300/* method2/600/* method2/1200/*"
for f in $FILES
do
	orig="${f/method2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-method2.tsv
done


# calculate difference: method3
echo "DSSIM	File" > dssim-method3.tsv
FILES="method3/300/* method3/600/* method3/1200/*"
for f in $FILES
do
	orig="${f/method3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-method3.tsv
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
