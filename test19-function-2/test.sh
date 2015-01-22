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
echo "# Test 19: resizing function (yet again)" > conclusions.md

# resize
mogrify -path adaptive/300 -interpolate Mesh -adaptive-resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path adaptive/300 -interpolate Mesh -adaptive-resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path adaptive/600 -interpolate Mesh -adaptive-resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path adaptive/600 -interpolate Mesh -adaptive-resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path adaptive/1200 -interpolate Mesh -adaptive-resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path adaptive/1200 -interpolate Mesh -adaptive-resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

mogrify -path distort/300 -interpolate Mesh -distort Resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path distort/300 -interpolate Mesh -distort Resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path distort/600 -interpolate Mesh -distort Resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path distort/600 -interpolate Mesh -distort Resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path distort/1200 -interpolate Mesh -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path distort/1200 -interpolate Mesh -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

mogrify -path geometry/300 -interpolate Mesh -geometry 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path geometry/300 -interpolate Mesh -geometry 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path geometry/600 -interpolate Mesh -geometry 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path geometry/600 -interpolate Mesh -geometry 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path geometry/1200 -interpolate Mesh -geometry 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path geometry/1200 -interpolate Mesh -geometry 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

# no interpolative-resize in mogrify
FILES="../assets-optimized/*.jpg ../assets-optimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-optimized/}"
	convert $f -interpolate Mesh -interpolative-resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip interpolative/300/$fn
	convert $f -interpolate Mesh -interpolative-resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip interpolative/600/$fn
	convert $f -interpolate Mesh -interpolative-resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip interpolative/1200/$fn
done

mogrify -path liquid/300 -interpolate Mesh -liquid-rescale 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path liquid/300 -interpolate Mesh -liquid-rescale 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path liquid/600 -interpolate Mesh -liquid-rescale 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path liquid/600 -interpolate Mesh -liquid-rescale 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path liquid/1200 -interpolate Mesh -liquid-rescale 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path liquid/1200 -interpolate Mesh -liquid-rescale 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

mogrify -path resize/300 -interpolate Mesh -resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path resize/300 -interpolate Mesh -resize 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path resize/600 -interpolate Mesh -resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path resize/600 -interpolate Mesh -resize 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path resize/1200 -interpolate Mesh -resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path resize/1200 -interpolate Mesh -resize 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

mogrify -path sample/300 -interpolate Mesh -sample 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path sample/300 -interpolate Mesh -sample 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path sample/600 -interpolate Mesh -sample 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path sample/600 -interpolate Mesh -sample 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path sample/1200 -interpolate Mesh -sample 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path sample/1200 -interpolate Mesh -sample 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

mogrify -path scale/300 -interpolate Mesh -scale 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path scale/300 -interpolate Mesh -scale 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path scale/600 -interpolate Mesh -scale 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path scale/600 -interpolate Mesh -scale 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path scale/1200 -interpolate Mesh -scale 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path scale/1200 -interpolate Mesh -scale 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

mogrify -path thumbnail/300 -interpolate Mesh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path thumbnail/300 -interpolate Mesh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path thumbnail/600 -interpolate Mesh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path thumbnail/600 -interpolate Mesh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png
mogrify -path thumbnail/1200 -interpolate Mesh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.jpg
mogrify -path thumbnail/1200 -interpolate Mesh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -strip ../assets-optimized/*.png

# optimize
imageoptim -d adaptive -q
imageoptim -d adaptive -q
imageoptim -d adaptive -q

imageoptim -d distort -q
imageoptim -d distort -q
imageoptim -d distort -q

imageoptim -d geometry -q
imageoptim -d geometry -q
imageoptim -d geometry -q

imageoptim -d interpolative -q
imageoptim -d interpolative -q
imageoptim -d interpolative -q

imageoptim -d liquid -q
imageoptim -d liquid -q
imageoptim -d liquid -q

imageoptim -d resize -q
imageoptim -d resize -q
imageoptim -d resize -q

imageoptim -d sample -q
imageoptim -d sample -q
imageoptim -d sample -q

imageoptim -d scale -q
imageoptim -d scale -q
imageoptim -d scale -q

imageoptim -d thumbnail -q
imageoptim -d thumbnail -q
imageoptim -d thumbnail -q


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
