#!/bin/bash

# setup dir/structure
rm -r default plus None FloydSteinberg Riemersma
mkdir default plus None FloydSteinberg Riemersma
mkdir default/300 plus/300 None/300 FloydSteinberg/300 Riemersma/300
mkdir default/600 plus/600 None/600 FloydSteinberg/600 Riemersma/600
mkdir default/1200 plus/1200 None/1200 FloydSteinberg/1200 Riemersma/1200

echo "# Test 36: posterize + dither 4" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path plus/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path plus/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path plus/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path plus/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path plus/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path plus/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path None/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path None/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path None/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path None/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path None/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path None/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path FloydSteinberg/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither FloydSteinberg -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path FloydSteinberg/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither FloydSteinberg -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path FloydSteinberg/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither FloydSteinberg -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path FloydSteinberg/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither FloydSteinberg -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path FloydSteinberg/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither FloydSteinberg -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path FloydSteinberg/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither FloydSteinberg -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path Riemersma/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither Riemersma -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path Riemersma/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither Riemersma -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path Riemersma/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither Riemersma -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path Riemersma/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither Riemersma -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path Riemersma/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither Riemersma -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path Riemersma/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither Riemersma -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d plus -q
imageoptim -d plus -q
imageoptim -d plus -q

imageoptim -d None -q
imageoptim -d None -q
imageoptim -d None -q

imageoptim -d FloydSteinberg -q
imageoptim -d FloydSteinberg -q
imageoptim -d FloydSteinberg -q

imageoptim -d Riemersma -q
imageoptim -d Riemersma -q
imageoptim -d Riemersma -q


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

# calculate difference: None
echo "DSSIM	File" > dssim-None.tsv
FILES="None/300/* None/600/* None/1200/*"
for f in $FILES
do
	orig="${f/None\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-None.tsv
done

# calculate difference: FloydSteinberg
echo "DSSIM	File" > dssim-FloydSteinberg.tsv
FILES="FloydSteinberg/300/* FloydSteinberg/600/* FloydSteinberg/1200/*"
for f in $FILES
do
	orig="${f/FloydSteinberg\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-FloydSteinberg.tsv
done

# calculate difference: Riemersma
echo "DSSIM	File" > dssim-Riemersma.tsv
FILES="Riemersma/300/* Riemersma/600/* Riemersma/1200/*"
for f in $FILES
do
	orig="${f/Riemersma\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Riemersma.tsv
done
