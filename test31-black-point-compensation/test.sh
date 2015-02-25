#!/bin/bash

# setup dir/structure
rm -r bpc none
mkdir bpc none
mkdir bpc/300 none/300
mkdir bpc/600 none/600
mkdir bpc/1200 none/1200

echo "# Test 31: black point compensation" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path bpc/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -black-point-compensation -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path bpc/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -black-point-compensation -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path bpc/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -black-point-compensation -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path bpc/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -black-point-compensation -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path bpc/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -black-point-compensation -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path bpc/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -black-point-compensation -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: bpc
echo "DSSIM	File" > dssim-bpc.tsv
FILES="bpc/300/* bpc/600/* bpc/1200/*"
for f in $FILES
do
	orig="${f/bpc\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-bpc.tsv
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
