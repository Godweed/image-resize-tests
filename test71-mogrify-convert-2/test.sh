#!/bin/bash

# setup dir/structure
rm -r default-mogrify 01-mogrify default-convert 01-convert
mkdir default-mogrify 01-mogrify default-convert 01-convert
mkdir default-mogrify/300 01-mogrify/300 default-convert/300 01-convert/300
mkdir default-mogrify/600 01-mogrify/600 default-convert/600 01-convert/600
mkdir default-mogrify/1200 01-mogrify/1200 default-convert/1200 01-convert/1200

echo "# Test 71: mogrify convert 2" > conclusions.md

# resize
mogrify -path default-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 01-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 01-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 01-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 01-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 01-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 01-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip default-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip default-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip default-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip 01-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip 01-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip 01-convert/1200/$fn
done


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default-mogrify
echo "DSSIM	File" > dssim-default-mogrify.tsv
FILES="default-mogrify/300/*.png default-mogrify/600/*.png default-mogrify/1200/*.png default-mogrify/300/*.jpg default-mogrify/600/*.jpg default-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/default-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default-mogrify.tsv
done


# calculate difference: 01-mogrify
echo "DSSIM	File" > dssim-01-mogrify.tsv
FILES="01-mogrify/300/*.png 01-mogrify/600/*.png 01-mogrify/1200/*.png 01-mogrify/300/*.jpg 01-mogrify/600/*.jpg 01-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/01-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01-mogrify.tsv
done


# calculate difference: default-convert
echo "DSSIM	File" > dssim-default-convert.tsv
FILES="default-convert/300/*.png default-convert/600/*.png default-convert/1200/*.png default-convert/300/*.jpg default-convert/600/*.jpg default-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/default-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default-convert.tsv
done


# calculate difference: 01-convert
echo "DSSIM	File" > dssim-01-convert.tsv
FILES="01-convert/300/*.png 01-convert/600/*.png 01-convert/1200/*.png 01-convert/300/*.jpg 01-convert/600/*.jpg 01-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/01-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01-convert.tsv
done
