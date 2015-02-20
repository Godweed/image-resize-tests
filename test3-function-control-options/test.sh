#!/bin/bash

# setup dir/structure
rm -r adaptive distort geometry interpolative liquid resize sample scale thumbnail
mkdir adaptive distort geometry interpolative liquid resize sample scale thumbnail
mkdir adaptive/300 adaptive/600 adaptive/1200
mkdir distort/300 distort/600 distort/1200
mkdir geometry/300 geometry/600 geometry/1200
mkdir interpolative/300 interpolative/600 interpolative/1200
mkdir liquid/300 liquid/600 liquid/1200
mkdir resize/300 resize/600 resize/1200
mkdir sample/300 sample/600 sample/1200
mkdir scale/300 scale/600 scale/1200
mkdir thumbnail/300 thumbnail/600 thumbnail/1200
echo "# Test 3: resizing function + control-like options" > conclusions.md

# resize
mogrify -path adaptive/300 -interpolate bicubic -adaptive-resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path adaptive/300 -interpolate bicubic -adaptive-resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path adaptive/600 -interpolate bicubic -adaptive-resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path adaptive/600 -interpolate bicubic -adaptive-resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path adaptive/1200 -interpolate bicubic -adaptive-resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path adaptive/1200 -interpolate bicubic -adaptive-resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path distort/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path distort/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path distort/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path distort/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path distort/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path distort/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path geometry/300 -interpolate bicubic -geometry 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path geometry/300 -interpolate bicubic -geometry 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path geometry/600 -interpolate bicubic -geometry 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path geometry/600 -interpolate bicubic -geometry 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path geometry/1200 -interpolate bicubic -geometry 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path geometry/1200 -interpolate bicubic -geometry 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

# no interpolative-resize in mogrify
FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"
	convert $f -interpolate bicubic -interpolative-resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip interpolative/300/$fn
	convert $f -interpolate bicubic -interpolative-resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip interpolative/600/$fn
	convert $f -interpolate bicubic -interpolative-resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip interpolative/1200/$fn
done

mogrify -path liquid/300 -interpolate bicubic -liquid-rescale 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path liquid/300 -interpolate bicubic -liquid-rescale 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path liquid/600 -interpolate bicubic -liquid-rescale 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path liquid/600 -interpolate bicubic -liquid-rescale 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path liquid/1200 -interpolate bicubic -liquid-rescale 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path liquid/1200 -interpolate bicubic -liquid-rescale 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path resize/300 -interpolate bicubic -resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path resize/300 -interpolate bicubic -resize 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path resize/600 -interpolate bicubic -resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path resize/600 -interpolate bicubic -resize 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path resize/1200 -interpolate bicubic -resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path resize/1200 -interpolate bicubic -resize 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path sample/300 -interpolate bicubic -sample 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path sample/300 -interpolate bicubic -sample 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path sample/600 -interpolate bicubic -sample 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path sample/600 -interpolate bicubic -sample 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path sample/1200 -interpolate bicubic -sample 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path sample/1200 -interpolate bicubic -sample 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path scale/300 -interpolate bicubic -scale 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path scale/300 -interpolate bicubic -scale 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path scale/600 -interpolate bicubic -scale 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path scale/600 -interpolate bicubic -scale 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path scale/1200 -interpolate bicubic -scale 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path scale/1200 -interpolate bicubic -scale 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path thumbnail/300 -interpolate bicubic -thumbnail 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path thumbnail/300 -interpolate bicubic -thumbnail 300 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path thumbnail/600 -interpolate bicubic -thumbnail 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path thumbnail/600 -interpolate bicubic -thumbnail 600 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path thumbnail/1200 -interpolate bicubic -thumbnail 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path thumbnail/1200 -interpolate bicubic -thumbnail 1200 -unsharp 0x1.0 -quality 60 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: adaptive
echo "DSSIM	File" > dssim-adaptive.tsv
FILES="adaptive/300/*.jpg adaptive/300/*.png adaptive/600/*.jpg adaptive/600/*.png adaptive/1200/*.jpg adaptive/1200/*.png"
for f in $FILES
do
	orig="${f/adaptive\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-adaptive.tsv
done


# calculate difference: distort
echo "DSSIM	File" > dssim-distort.tsv
FILES="distort/300/*.jpg distort/300/*.png distort/600/*.jpg distort/600/*.png distort/1200/*.jpg distort/1200/*.png"
for f in $FILES
do
	orig="${f/distort\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-distort.tsv
done


# calculate difference: geometry
echo "DSSIM	File" > dssim-geometry.tsv
FILES="geometry/300/*.jpg geometry/300/*.png geometry/600/*.jpg geometry/600/*.png geometry/1200/*.jpg geometry/1200/*.png"
for f in $FILES
do
	orig="${f/geometry\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-geometry.tsv
done


# calculate difference: interpolative
echo "DSSIM	File" > dssim-interpolative.tsv
FILES="interpolative/300/*.jpg interpolative/300/*.png interpolative/600/*.jpg interpolative/600/*.png interpolative/1200/*.jpg interpolative/1200/*.png"
for f in $FILES
do
	orig="${f/interpolative\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-interpolative.tsv
done


# calculate difference: liquid
echo "DSSIM	File" > dssim-liquid.tsv
FILES="liquid/300/*.jpg liquid/300/*.png liquid/600/*.jpg liquid/600/*.png liquid/1200/*.jpg liquid/1200/*.png"
for f in $FILES
do
	orig="${f/liquid\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-liquid.tsv
done


# calculate difference: resize
echo "DSSIM	File" > dssim-resize.tsv
FILES="resize/300/*.jpg resize/300/*.png resize/600/*.jpg resize/600/*.png resize/1200/*.jpg resize/1200/*.png"
for f in $FILES
do
	orig="${f/resize\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-resize.tsv
done


# calculate difference: sample
echo "DSSIM	File" > dssim-sample.tsv
FILES="sample/300/*.jpg sample/300/*.png sample/600/*.jpg sample/600/*.png sample/1200/*.jpg sample/1200/*.png"
for f in $FILES
do
	orig="${f/sample\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-sample.tsv
done


# calculate difference: scale
echo "DSSIM	File" > dssim-scale.tsv
FILES="scale/300/*.jpg scale/300/*.png scale/600/*.jpg scale/600/*.png scale/1200/*.jpg scale/1200/*.png"
for f in $FILES
do
	orig="${f/scale\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-scale.tsv
done


# calculate difference: thumbnail
echo "DSSIM	File" > dssim-thumbnail.tsv
FILES="thumbnail/300/*.jpg thumbnail/300/*.png thumbnail/600/*.jpg thumbnail/600/*.png thumbnail/1200/*.jpg thumbnail/1200/*.png"
for f in $FILES
do
	orig="${f/thumbnail\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-thumbnail.tsv
done
