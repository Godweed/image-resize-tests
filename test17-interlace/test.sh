#!/bin/bash

# setup dir/structure
rm -r none line plane partition JPEG GIF PNG
mkdir none line plane partition JPEG GIF PNG
mkdir none/300 line/300 plane/300 partition/300 JPEG/300 GIF/300 PNG/300
mkdir none/600 line/600 plane/600 partition/600 JPEG/600 GIF/600 PNG/600
mkdir none/1200 line/1200 plane/1200 partition/1200 JPEG/1200 GIF/1200 PNG/1200

echo "# Test 17: interlace" > conclusions.md

# resize
mogrify -path none/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path line/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace line -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path line/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace line -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path line/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace line -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path line/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace line -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path line/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace line -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path line/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace line -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path plane/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace plane -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path plane/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace plane -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path plane/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace plane -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path plane/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace plane -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path plane/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace plane -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path plane/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace plane -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path partition/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace partition -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path partition/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace partition -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path partition/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace partition -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path partition/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace partition -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path partition/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace partition -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path partition/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace partition -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path JPEG/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace JPEG -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path JPEG/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace JPEG -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path JPEG/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace JPEG -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path JPEG/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace JPEG -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path JPEG/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace JPEG -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path JPEG/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace JPEG -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path GIF/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace GIF -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path GIF/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace GIF -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path GIF/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace GIF -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path GIF/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace GIF -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path GIF/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace GIF -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path GIF/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace GIF -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path PNG/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace PNG -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path PNG/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace PNG -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path PNG/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace PNG -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path PNG/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace PNG -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path PNG/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace PNG -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path PNG/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace PNG -colorspace sRGB -strip ../assets-unoptimized/*.png


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


# calculate difference: line
echo "DSSIM	File" > dssim-line.tsv
FILES="line/300/* line/600/* line/1200/*"
for f in $FILES
do
	orig="${f/line\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-line.tsv
done


# calculate difference: plane
echo "DSSIM	File" > dssim-plane.tsv
FILES="plane/300/* plane/600/* plane/1200/*"
for f in $FILES
do
	orig="${f/plane\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-plane.tsv
done


# calculate difference: partition
echo "DSSIM	File" > dssim-partition.tsv
FILES="partition/300/* partition/600/* partition/1200/*"
for f in $FILES
do
	orig="${f/partition\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-partition.tsv
done


# calculate difference: JPEG
echo "DSSIM	File" > dssim-JPEG.tsv
FILES="JPEG/300/* JPEG/600/* JPEG/1200/*"
for f in $FILES
do
	orig="${f/JPEG\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-JPEG.tsv
done


# calculate difference: GIF
echo "DSSIM	File" > dssim-GIF.tsv
FILES="GIF/300/* GIF/600/* GIF/1200/*"
for f in $FILES
do
	orig="${f/GIF\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-GIF.tsv
done


# calculate difference: PNG
echo "DSSIM	File" > dssim-PNG.tsv
FILES="PNG/300/* PNG/600/* PNG/1200/*"
for f in $FILES
do
	orig="${f/PNG\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-PNG.tsv
done
