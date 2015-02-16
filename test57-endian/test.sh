#!/bin/bash

# setup dir/structure
rm -r default LSB MSB plus
mkdir default LSB MSB plus
mkdir default/300 LSB/300 MSB/300 plus/300
mkdir default/600 LSB/600 MSB/600 plus/600
mkdir default/1200 LSB/1200 MSB/1200 plus/1200

echo "# Test 57: endian" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path LSB/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian LSB -interlace none ../assets-optimized/*.jpg
mogrify -path LSB/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian LSB -interlace none ../assets-optimized/*.png
mogrify -path LSB/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian LSB -interlace none ../assets-optimized/*.jpg
mogrify -path LSB/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian LSB -interlace none ../assets-optimized/*.png
mogrify -path LSB/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian LSB -interlace none ../assets-optimized/*.jpg
mogrify -path LSB/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian LSB -interlace none ../assets-optimized/*.png

mogrify -path MSB/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian MSB -interlace none ../assets-optimized/*.jpg
mogrify -path MSB/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian MSB -interlace none ../assets-optimized/*.png
mogrify -path MSB/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian MSB -interlace none ../assets-optimized/*.jpg
mogrify -path MSB/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian MSB -interlace none ../assets-optimized/*.png
mogrify -path MSB/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian MSB -interlace none ../assets-optimized/*.jpg
mogrify -path MSB/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -endian MSB -interlace none ../assets-optimized/*.png

mogrify -path plus/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true +endian -interlace none ../assets-optimized/*.jpg
mogrify -path plus/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true +endian -interlace none ../assets-optimized/*.png
mogrify -path plus/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true +endian -interlace none ../assets-optimized/*.jpg
mogrify -path plus/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true +endian -interlace none ../assets-optimized/*.png
mogrify -path plus/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true +endian -interlace none ../assets-optimized/*.jpg
mogrify -path plus/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true +endian -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d LSB -q
imageoptim -d LSB -q
imageoptim -d LSB -q

imageoptim -d MSB -q
imageoptim -d MSB -q
imageoptim -d MSB -q

imageoptim -d plus -q
imageoptim -d plus -q
imageoptim -d plus -q


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

# calculate difference: LSB
echo "DSSIM	File" > dssim-LSB.tsv
FILES="LSB/300/* LSB/600/* LSB/1200/*"
for f in $FILES
do
	orig="${f/LSB\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-LSB.tsv
done

# calculate difference: MSB
echo "DSSIM	File" > dssim-MSB.tsv
FILES="MSB/300/* MSB/600/* MSB/1200/*"
for f in $FILES
do
	orig="${f/MSB\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-MSB.tsv
done

# calculate difference: plus
echo "DSSIM	File" > dssim-plus.tsv
FILES="plus/300/* plus/600/* plus/1200/*"
for f in $FILES
do
	orig="${f/plus\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-plus.tsv
done
