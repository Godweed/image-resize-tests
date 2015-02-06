#!/bin/bash

# setup dir/structure
rm -r post-131 post-132 post-133 post-134 post-135 post-136 post-137 post-138 post-139 post-140
mkdir post-131 post-132 post-133 post-134 post-135 post-136 post-137 post-138 post-139 post-140
mkdir post-131/300 post-132/300 post-133/300 post-134/300 post-135/300 post-136/300 post-137/300 post-138/300 post-139/300 post-140/300
mkdir post-131/600 post-132/600 post-133/600 post-134/600 post-135/600 post-136/600 post-137/600 post-138/600 post-139/600 post-140/600
mkdir post-131/1200 post-132/1200 post-133/1200 post-134/1200 post-135/1200 post-136/1200 post-137/1200 post-138/1200 post-139/1200 post-140/1200

echo "# Test 35: posterize + dither 3" > conclusions.md

# resize
mogrify -path post-131/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 131 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-131/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 131 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-131/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 131 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-131/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 131 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-131/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 131 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-131/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 131 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-132/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 132 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-132/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 132 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-132/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 132 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-132/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 132 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-132/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 132 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-132/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 132 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-133/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 133 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-133/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 133 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-133/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 133 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-133/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 133 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-133/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 133 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-133/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 133 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-134/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 134 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-134/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 134 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-134/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 134 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-134/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 134 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-134/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 134 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-134/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 134 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-135/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 135 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-135/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 135 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-135/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 135 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-135/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 135 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-135/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 135 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-135/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 135 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-136/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-136/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-136/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-136/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-136/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-136/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 136 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-137/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 137 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-137/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 137 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-137/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 137 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-137/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 137 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-137/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 137 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-137/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 137 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-138/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 138 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-138/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 138 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-138/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 138 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-138/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 138 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-138/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 138 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-138/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 138 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-139/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 139 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-139/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 139 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-139/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 139 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-139/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 139 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-139/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 139 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-139/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 139 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-140/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-140/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-140/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-140/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-140/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-140/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 140 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d post-131 -q
imageoptim -d post-131 -q
imageoptim -d post-131 -q

imageoptim -d post-132 -q
imageoptim -d post-132 -q
imageoptim -d post-132 -q

imageoptim -d post-133 -q
imageoptim -d post-133 -q
imageoptim -d post-133 -q

imageoptim -d post-134 -q
imageoptim -d post-134 -q
imageoptim -d post-134 -q

imageoptim -d post-135 -q
imageoptim -d post-135 -q
imageoptim -d post-135 -q

imageoptim -d post-136 -q
imageoptim -d post-136 -q
imageoptim -d post-136 -q

imageoptim -d post-137 -q
imageoptim -d post-137 -q
imageoptim -d post-137 -q

imageoptim -d post-138 -q
imageoptim -d post-138 -q
imageoptim -d post-138 -q

imageoptim -d post-139 -q
imageoptim -d post-139 -q
imageoptim -d post-139 -q

imageoptim -d post-140 -q
imageoptim -d post-140 -q
imageoptim -d post-140 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: post-131
echo "DSSIM	File" > dssim-post-131.tsv
FILES="post-131/300/* post-131/600/* post-131/1200/*"
for f in $FILES
do
	orig="${f/post-131\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-131.tsv
done

# calculate difference: post-132
echo "DSSIM	File" > dssim-post-132.tsv
FILES="post-132/300/* post-132/600/* post-132/1200/*"
for f in $FILES
do
	orig="${f/post-132\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-132.tsv
done

# calculate difference: post-133
echo "DSSIM	File" > dssim-post-133.tsv
FILES="post-133/300/* post-133/600/* post-133/1200/*"
for f in $FILES
do
	orig="${f/post-133\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-133.tsv
done

# calculate difference: post-134
echo "DSSIM	File" > dssim-post-134.tsv
FILES="post-134/300/* post-134/600/* post-134/1200/*"
for f in $FILES
do
	orig="${f/post-134\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-134.tsv
done

# calculate difference: post-135
echo "DSSIM	File" > dssim-post-135.tsv
FILES="post-135/300/* post-135/600/* post-135/1200/*"
for f in $FILES
do
	orig="${f/post-135\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-135.tsv
done

# calculate difference: post-136
echo "DSSIM	File" > dssim-post-136.tsv
FILES="post-136/300/* post-136/600/* post-136/1200/*"
for f in $FILES
do
	orig="${f/post-136\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-136.tsv
done

# calculate difference: post-137
echo "DSSIM	File" > dssim-post-137.tsv
FILES="post-137/300/* post-137/600/* post-137/1200/*"
for f in $FILES
do
	orig="${f/post-137\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-137.tsv
done

# calculate difference: post-138
echo "DSSIM	File" > dssim-post-138.tsv
FILES="post-138/300/* post-138/600/* post-138/1200/*"
for f in $FILES
do
	orig="${f/post-138\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-138.tsv
done

# calculate difference: post-139
echo "DSSIM	File" > dssim-post-139.tsv
FILES="post-139/300/* post-139/600/* post-139/1200/*"
for f in $FILES
do
	orig="${f/post-139\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-139.tsv
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
