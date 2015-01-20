#!/bin/bash

# setup dir/structure
rm -r strip nostrip
mkdir strip nostrip
mkdir strip/300 nostrip/300
mkdir strip/600 nostrip/600
mkdir strip/1200 nostrip/1200

echo "# Test 16: strip" > conclusions.md

# resize
mogrify -path strip/300 -interpolate Mesh -distort Resize 300 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path strip/300 -interpolate Mesh -distort Resize 300 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path strip/600 -interpolate Mesh -distort Resize 600 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path strip/600 -interpolate Mesh -distort Resize 600 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path strip/1200 -interpolate Mesh -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path strip/1200 -interpolate Mesh -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png

mogrify -path nostrip/300 -interpolate Mesh -distort Resize 300 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB ../assets-optimized/*.jpg
mogrify -path nostrip/300 -interpolate Mesh -distort Resize 300 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB ../assets-optimized/*.png
mogrify -path nostrip/600 -interpolate Mesh -distort Resize 600 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB ../assets-optimized/*.jpg
mogrify -path nostrip/600 -interpolate Mesh -distort Resize 600 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB ../assets-optimized/*.png
mogrify -path nostrip/1200 -interpolate Mesh -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB ../assets-optimized/*.jpg
mogrify -path nostrip/1200 -interpolate Mesh -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.45 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB ../assets-optimized/*.png


# optimize
imageoptim -d strip -q
imageoptim -d strip -q
imageoptim -d strip -q

imageoptim -d nostrip -q
imageoptim -d nostrip -q
imageoptim -d nostrip -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: strip
echo "DSSIM	File" > dssim-strip.tsv
FILES="strip/300/* strip/600/* strip/1200/*"
for f in $FILES
do
	orig="${f/strip\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-strip.tsv
done


# calculate difference: nostrip
echo "DSSIM	File" > dssim-nostrip.tsv
FILES="nostrip/300/* nostrip/600/* nostrip/1200/*"
for f in $FILES
do
	orig="${f/nostrip\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-nostrip.tsv
done
