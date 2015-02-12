#!/bin/bash

# setup dir/structure
rm -r default colors jpegcolors both
mkdir default colors jpegcolors both
mkdir default/300 colors/300 jpegcolors/300 both/300
mkdir default/600 colors/600 jpegcolors/600 both/600
mkdir default/1200 colors/1200 jpegcolors/1200 both/1200

echo "# Test 46: colors/jpeg:colors" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

FILES="../assets-optimized/*.jpg ../assets-optimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-optimized/}"
	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -colors $(identify -format "%k" $f) -interlace none colors/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -colors $(identify -format "%k" $f) -interlace none colors/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -colors $(identify -format "%k" $f) -interlace none colors/1200/$fn
done

FILES="../assets-optimized/*.jpg ../assets-optimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-optimized/}"
	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:colors=$(identify -format "%k" $f) -interlace none jpegcolors/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:colors=$(identify -format "%k" $f) -interlace none jpegcolors/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:colors=$(identify -format "%k" $f) -interlace none jpegcolors/1200/$fn
done

FILES="../assets-optimized/*.jpg ../assets-optimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-optimized/}"
	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -colors $(identify -format "%k" $f) -define jpeg:colors=$(identify -format "%k" $f) -interlace none both/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -colors $(identify -format "%k" $f) -define jpeg:colors=$(identify -format "%k" $f) -interlace none both/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -colors $(identify -format "%k" $f) -define jpeg:colors=$(identify -format "%k" $f) -interlace none both/1200/$fn
done


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d colors -q
imageoptim -d colors -q
imageoptim -d colors -q

imageoptim -d jpegcolors -q
imageoptim -d jpegcolors -q
imageoptim -d jpegcolors -q

imageoptim -d both -q
imageoptim -d both -q
imageoptim -d both -q


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

# calculate difference: colors
echo "DSSIM	File" > dssim-colors.tsv
FILES="colors/300/* colors/600/* colors/1200/*"
for f in $FILES
do
	orig="${f/colors\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colors.tsv
done

# calculate difference: jpegcolors
echo "DSSIM	File" > dssim-jpegcolors.tsv
FILES="jpegcolors/300/* jpegcolors/600/* jpegcolors/1200/*"
for f in $FILES
do
	orig="${f/jpegcolors\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-jpegcolors.tsv
done

# calculate difference: both
echo "DSSIM	File" > dssim-both.tsv
FILES="both/300/* both/600/* both/1200/*"
for f in $FILES
do
	orig="${f/both\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both.tsv
done
