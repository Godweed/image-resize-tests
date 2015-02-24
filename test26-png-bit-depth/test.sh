#!/bin/bash

# setup dir/structure
rm -r none cascading
mkdir none cascading
mkdir none/300 cascading/300
mkdir none/600 cascading/600
mkdir none/1200 cascading/1200

echo "# Test 26: png-bit-depth" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

# first, do the normal thing
mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

# then, do cascading lower bit-depths
mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=16 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=16 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=16 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=8 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=8 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=8 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=4 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=4 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=4 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=3 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=3 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=3 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=2 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=2 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=2 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path cascading/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path cascading/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:bit-depth=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


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


# calculate difference: cascading
echo "DSSIM	File" > dssim-cascading.tsv
FILES="cascading/300/* cascading/600/* cascading/1200/*"
for f in $FILES
do
	orig="${f/cascading\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-cascading.tsv
done
