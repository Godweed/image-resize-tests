#!/bin/bash

# setup dir/structure
rm -r t f none
mkdir t f none
mkdir t/300 f/300 none/300
mkdir t/600 f/600 none/600
mkdir t/1200 f/1200 none/1200

echo "# Test 29: png-preserve-colormap" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path t/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=true -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path t/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=true -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path t/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=true -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path t/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=true -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path t/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=true -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path t/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=true -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path f/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=false -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path f/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=false -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path f/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=false -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path f/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=false -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path f/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=false -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path f/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:preserve-colormap=false -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: t
echo "DSSIM	File" > dssim-t.tsv
FILES="t/300/* t/600/* t/1200/*"
for f in $FILES
do
	orig="${f/t\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-t.tsv
done

# calculate difference: f
echo "DSSIM	File" > dssim-f.tsv
FILES="f/300/* f/600/* f/1200/*"
for f in $FILES
do
	orig="${f/f\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-f.tsv
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
