#!/bin/bash

# setup dir/structure
rm -r default dxt1 dxt5 none
mkdir default dxt1 dxt5 none
mkdir default/300 dxt1/300 dxt5/300 none/300
mkdir default/600 dxt1/600 dxt5/600 none/600
mkdir default/1200 dxt1/1200 dxt5/1200 none/1200

echo "# Test 44: dds:compression" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path dxt1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt1 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path dxt1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt1 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path dxt1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt1 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path dxt1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt1 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path dxt1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt1 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path dxt1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt1 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path dxt5/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path dxt5/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path dxt5/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path dxt5/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path dxt5/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path dxt5/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=dxt5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=none -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=none -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=none -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=none -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=none -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define dds:compression=none -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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

# calculate difference: dxt1
echo "DSSIM	File" > dssim-dxt1.tsv
FILES="dxt1/300/* dxt1/600/* dxt1/1200/*"
for f in $FILES
do
	orig="${f/dxt1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-dxt1.tsv
done

# calculate difference: dxt5
echo "DSSIM	File" > dssim-dxt5.tsv
FILES="dxt5/300/* dxt5/600/* dxt5/1200/*"
for f in $FILES
do
	orig="${f/dxt5\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-dxt5.tsv
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
