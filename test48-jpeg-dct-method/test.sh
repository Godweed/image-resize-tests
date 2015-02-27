#!/bin/bash

# setup dir/structure
rm -r none default fastest float ifast islow
mkdir none default fastest float ifast islow
mkdir none/300 default/300 fastest/300 float/300 ifast/300 islow/300
mkdir none/600 default/600 fastest/600 float/600 ifast/600 islow/600
mkdir none/1200 default/1200 fastest/1200 float/1200 ifast/1200 islow/1200

echo "# Test 48: jpeg DCT method" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=default -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=default -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=default -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=default -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=default -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=default -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path fastest/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=fastest -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path fastest/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=fastest -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path fastest/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=fastest -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path fastest/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=fastest -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path fastest/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=fastest -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path fastest/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=fastest -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path float/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=float -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path float/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=float -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path float/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=float -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path float/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=float -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path float/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=float -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path float/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=float -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path ifast/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=ifast -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path ifast/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=ifast -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path ifast/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=ifast -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path ifast/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=ifast -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path ifast/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=ifast -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path ifast/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=ifast -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path islow/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=islow -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path islow/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=islow -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path islow/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=islow -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path islow/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=islow -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path islow/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=islow -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path islow/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:dct-method=islow -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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

# calculate difference: default
echo "DSSIM	File" > dssim-default.tsv
FILES="default/300/* default/600/* default/1200/*"
for f in $FILES
do
	orig="${f/default\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default.tsv
done

# calculate difference: fastest
echo "DSSIM	File" > dssim-fastest.tsv
FILES="fastest/300/* fastest/600/* fastest/1200/*"
for f in $FILES
do
	orig="${f/fastest\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-fastest.tsv
done

# calculate difference: float
echo "DSSIM	File" > dssim-float.tsv
FILES="float/300/* float/600/* float/1200/*"
for f in $FILES
do
	orig="${f/float\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-float.tsv
done

# calculate difference: ifast
echo "DSSIM	File" > dssim-ifast.tsv
FILES="ifast/300/* ifast/600/* ifast/1200/*"
for f in $FILES
do
	orig="${f/ifast\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-ifast.tsv
done

# calculate difference: islow
echo "DSSIM	File" > dssim-islow.tsv
FILES="islow/300/* islow/600/* islow/1200/*"
for f in $FILES
do
	orig="${f/islow\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-islow.tsv
done
