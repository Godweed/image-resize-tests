#!/bin/bash

# setup dir/structure
rm -r default test
mkdir default test
mkdir default/300 test/300
mkdir default/600 test/600
mkdir default/1200 test/1200

echo "# Test 55: despeckle" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path test/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -despeckle -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path test/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -despeckle -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path test/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -despeckle -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path test/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -despeckle -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path test/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -despeckle -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path test/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -despeckle -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d test -q
imageoptim -d test -q
imageoptim -d test -q


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

# calculate difference: test
echo "DSSIM	File" > dssim-test.tsv
FILES="test/300/* test/600/* test/1200/*"
for f in $FILES
do
	orig="${f/test\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-test.tsv
done
