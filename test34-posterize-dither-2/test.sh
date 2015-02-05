#!/bin/bash

# setup dir/structure
rm -r post-90 post-100 post-110 post-120 post-130 post-140 post-150 post-160 post-170 post-180 none
mkdir post-90 post-100 post-110 post-120 post-130 post-140 post-150 post-160 post-170 post-180 none
mkdir post-90/300 post-100/300 post-110/300 post-120/300 post-130/300 post-140/300 post-150/300 post-160/300 post-170/300 post-180/300 none/300
mkdir post-90/600 post-100/600 post-110/600 post-120/600 post-130/600 post-140/600 post-150/600 post-160/600 post-170/600 post-180/600 none/600
mkdir post-90/1200 post-100/1200 post-110/1200 post-120/1200 post-130/1200 none/1200 post-140/1200 post-150/1200 post-160/1200 post-170/1200 post-180/1200

echo "# Test 34: posterize + dither 2" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-90/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 90 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-90/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 90 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-90/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 90 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-90/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 90 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-90/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 90 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-90/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 90 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-100/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 100 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-100/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 100 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-100/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 100 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-100/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 100 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-100/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 100 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-100/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 100 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-110/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 110 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-110/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 110 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-110/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 110 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-110/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 110 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-110/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 110 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-110/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 110 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-120/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 120 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-120/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 120 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-120/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 120 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-120/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 120 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-120/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 120 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-120/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 120 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-130/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 130 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-130/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 130 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-130/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 130 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-130/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 130 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-130/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 130 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-130/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 130 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-140/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-140/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-140/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-140/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-140/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-140/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-150/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 150 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-150/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 150 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-150/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 150 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-150/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 150 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-150/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 150 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-150/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 150 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-160/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 160 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-160/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 160 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-160/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 160 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-160/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 160 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-160/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 160 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-160/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 160 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-170/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 170 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-170/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 170 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-170/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 170 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-170/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 170 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-170/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 170 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-170/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 170 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-180/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 180 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-180/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 180 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-180/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 180 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-180/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 180 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-180/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 180 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-180/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 180 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d post-90 -q
imageoptim -d post-90 -q
imageoptim -d post-90 -q

imageoptim -d post-100 -q
imageoptim -d post-100 -q
imageoptim -d post-100 -q

imageoptim -d post-110 -q
imageoptim -d post-110 -q
imageoptim -d post-110 -q

imageoptim -d post-120 -q
imageoptim -d post-120 -q
imageoptim -d post-120 -q

imageoptim -d post-130 -q
imageoptim -d post-130 -q
imageoptim -d post-130 -q

imageoptim -d post-140 -q
imageoptim -d post-140 -q
imageoptim -d post-140 -q

imageoptim -d post-150 -q
imageoptim -d post-150 -q
imageoptim -d post-150 -q

imageoptim -d post-160 -q
imageoptim -d post-160 -q
imageoptim -d post-160 -q

imageoptim -d post-170 -q
imageoptim -d post-170 -q
imageoptim -d post-170 -q

imageoptim -d post-180 -q
imageoptim -d post-180 -q
imageoptim -d post-180 -q

imageoptim -d none -q
imageoptim -d none -q
imageoptim -d none -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: post-90
echo "DSSIM	File" > dssim-post-90.tsv
FILES="post-90/300/* post-90/600/* post-90/1200/*"
for f in $FILES
do
	orig="${f/post-90\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-90.tsv
done

# calculate difference: post-100
echo "DSSIM	File" > dssim-post-100.tsv
FILES="post-100/300/* post-100/600/* post-100/1200/*"
for f in $FILES
do
	orig="${f/post-100\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-100.tsv
done

# calculate difference: post-110
echo "DSSIM	File" > dssim-post-110.tsv
FILES="post-110/300/* post-110/600/* post-110/1200/*"
for f in $FILES
do
	orig="${f/post-110\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-110.tsv
done

# calculate difference: post-120
echo "DSSIM	File" > dssim-post-120.tsv
FILES="post-120/300/* post-120/600/* post-120/1200/*"
for f in $FILES
do
	orig="${f/post-120\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-120.tsv
done

# calculate difference: post-130
echo "DSSIM	File" > dssim-post-130.tsv
FILES="post-130/300/* post-130/600/* post-130/1200/*"
for f in $FILES
do
	orig="${f/post-130\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-130.tsv
done

# calculate difference: post-140
echo "DSSIM	File" > dssim-post-140.tsv
FILES="post-140/300/* post-140/600/* post-140/1200/*"
for f in $FILES
do
	orig="${f/post-140\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-140.tsv
done

# calculate difference: post-150
echo "DSSIM	File" > dssim-post-150.tsv
FILES="post-150/300/* post-150/600/* post-150/1200/*"
for f in $FILES
do
	orig="${f/post-150\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-150.tsv
done

# calculate difference: post-160
echo "DSSIM	File" > dssim-post-160.tsv
FILES="post-160/300/* post-160/600/* post-160/1200/*"
for f in $FILES
do
	orig="${f/post-160\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-160.tsv
done

# calculate difference: post-170
echo "DSSIM	File" > dssim-post-170.tsv
FILES="post-170/300/* post-170/600/* post-170/1200/*"
for f in $FILES
do
	orig="${f/post-170\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-170.tsv
done

# calculate difference: post-180
echo "DSSIM	File" > dssim-post-180.tsv
FILES="post-180/300/* post-180/600/* post-180/1200/*"
for f in $FILES
do
	orig="${f/post-180\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-180.tsv
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
