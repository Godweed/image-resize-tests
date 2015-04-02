#!/bin/bash

# setup dir/structure
rm -r default d d+s d+s+u d+u s s+u u
mkdir default d d+s d+s+u d+u s s+u u
mkdir default/300 d/300 d+s/300 d+s+u/300 d+u/300 s/300 s+u/300 u/300
mkdir default/600 d/600 d+s/600 d+s+u/600 d+u/600 s/600 s+u/600 u/600
mkdir default/1200 d/1200 d+s/1200 d+s+u/1200 d+u/1200 s/1200 s+u/1200 u/1200

echo "# Test 77: optim no-optim compare" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path d/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path d/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path d/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path d/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path d/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path d/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path d+s/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path d+s/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path d+s/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path d+s/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path d+s/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path d+s/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path d+s+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path d+s+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path d+s+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path d+s+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path d+s+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path d+s+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path d+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path d+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path d+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path d+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path d+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path d+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path s/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path s/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path s/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path s/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path s/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path s/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path s+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path s+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path s+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path s+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path s+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path s+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default
echo "DSSIM	File" > dssim-default.tsv
FILES="default/300/*.png default/600/*.png default/1200/*.png default/300/*.jpg default/600/*.jpg default/1200/*.jpg"
for f in $FILES
do
	orig="${f/default\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default.tsv
done


# calculate difference: d
echo "DSSIM	File" > dssim-d.tsv
FILES="d/300/*.png d/600/*.png d/1200/*.png d/300/*.jpg d/600/*.jpg d/1200/*.jpg"
for f in $FILES
do
	orig="${f/d\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d.tsv
done


# calculate difference: d+s
echo "DSSIM	File" > dssim-d+s.tsv
FILES="d+s/300/*.png d+s/600/*.png d+s/1200/*.png d+s/300/*.jpg d+s/600/*.jpg d+s/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+s\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+s.tsv
done


# calculate difference: d+s+u
echo "DSSIM	File" > dssim-d+s+u.tsv
FILES="d+s+u/300/*.png d+s+u/600/*.png d+s+u/1200/*.png d+s+u/300/*.jpg d+s+u/600/*.jpg d+s+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+s+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+s+u.tsv
done


# calculate difference: d+u
echo "DSSIM	File" > dssim-d+u.tsv
FILES="d+u/300/*.png d+u/600/*.png d+u/1200/*.png d+u/300/*.jpg d+u/600/*.jpg d+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+u.tsv
done


# calculate difference: s
echo "DSSIM	File" > dssim-s.tsv
FILES="s/300/*.png s/600/*.png s/1200/*.png s/300/*.jpg s/600/*.jpg s/1200/*.jpg"
for f in $FILES
do
	orig="${f/s\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-s.tsv
done


# calculate difference: s+u
echo "DSSIM	File" > dssim-s+u.tsv
FILES="s+u/300/*.png s+u/600/*.png s+u/1200/*.png s+u/300/*.jpg s+u/600/*.jpg s+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/s+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-s+u.tsv
done


# calculate difference: u
echo "DSSIM	File" > dssim-u.tsv
FILES="u/300/*.png u/600/*.png u/1200/*.png u/300/*.jpg u/600/*.jpg u/1200/*.jpg"
for f in $FILES
do
	orig="${f/u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-u.tsv
done
