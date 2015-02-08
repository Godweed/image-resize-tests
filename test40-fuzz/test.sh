#!/bin/bash

# setup dir/structure
rm -r none 0 10 20 30 40 50 60 70 80 90 100
mkdir none 0 10 20 30 40 50 60 70 80 90 100
mkdir none/300 0/300 10/300 20/300 30/300 40/300 50/300 60/300 70/300 80/300 90/300 100/300
mkdir none/600 0/600 10/600 20/600 30/600 40/600 50/600 60/600 70/600 80/600 90/600 100/600
mkdir none/1200 0/1200 10/1200 20/1200 30/1200 40/1200 50/1200 60/1200 70/1200 80/1200 90/1200 100/1200

echo "# Test 40: fuzz" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 0/300 -fuzz 0% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0/300 -fuzz 0% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0/600 -fuzz 0% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0/600 -fuzz 0% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 0/1200 -fuzz 0% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 0/1200 -fuzz 0% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 10/300 -fuzz 10% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/300 -fuzz 10% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 10/600 -fuzz 10% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/600 -fuzz 10% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 10/1200 -fuzz 10% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/1200 -fuzz 10% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 20/300 -fuzz 20% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 20/300 -fuzz 20% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 20/600 -fuzz 20% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 20/600 -fuzz 20% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 20/1200 -fuzz 20% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 20/1200 -fuzz 20% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 30/300 -fuzz 30% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 30/300 -fuzz 30% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 30/600 -fuzz 30% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 30/600 -fuzz 30% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 30/1200 -fuzz 30% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 30/1200 -fuzz 30% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 40/300 -fuzz 40% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 40/300 -fuzz 40% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 40/600 -fuzz 40% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 40/600 -fuzz 40% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 40/1200 -fuzz 40% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 40/1200 -fuzz 40% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 50/300 -fuzz 50% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 50/300 -fuzz 50% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 50/600 -fuzz 50% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 50/600 -fuzz 50% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 50/1200 -fuzz 50% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 50/1200 -fuzz 50% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 60/300 -fuzz 60% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 60/300 -fuzz 60% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 60/600 -fuzz 60% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 60/600 -fuzz 60% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 60/1200 -fuzz 60% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 60/1200 -fuzz 60% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 70/300 -fuzz 70% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 70/300 -fuzz 70% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 70/600 -fuzz 70% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 70/600 -fuzz 70% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 70/1200 -fuzz 70% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 70/1200 -fuzz 70% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 80/300 -fuzz 80% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 80/300 -fuzz 80% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 80/600 -fuzz 80% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 80/600 -fuzz 80% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 80/1200 -fuzz 80% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 80/1200 -fuzz 80% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 90/300 -fuzz 90% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 90/300 -fuzz 90% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 90/600 -fuzz 90% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 90/600 -fuzz 90% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 90/1200 -fuzz 90% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 90/1200 -fuzz 90% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 100/300 -fuzz 100% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 100/300 -fuzz 100% -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 100/600 -fuzz 100% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 100/600 -fuzz 100% -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 100/1200 -fuzz 100% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 100/1200 -fuzz 100% -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d none -q
imageoptim -d none -q
imageoptim -d none -q

imageoptim -d 0 -q
imageoptim -d 0 -q
imageoptim -d 0 -q

imageoptim -d 10 -q
imageoptim -d 10 -q
imageoptim -d 10 -q

imageoptim -d 20 -q
imageoptim -d 20 -q
imageoptim -d 20 -q

imageoptim -d 30 -q
imageoptim -d 30 -q
imageoptim -d 30 -q

imageoptim -d 40 -q
imageoptim -d 40 -q
imageoptim -d 40 -q

imageoptim -d 50 -q
imageoptim -d 50 -q
imageoptim -d 50 -q

imageoptim -d 60 -q
imageoptim -d 60 -q
imageoptim -d 60 -q

imageoptim -d 70 -q
imageoptim -d 70 -q
imageoptim -d 70 -q

imageoptim -d 80 -q
imageoptim -d 80 -q
imageoptim -d 80 -q

imageoptim -d 90 -q
imageoptim -d 90 -q
imageoptim -d 90 -q

imageoptim -d 100 -q
imageoptim -d 100 -q
imageoptim -d 100 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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

# calculate difference: 0
echo "DSSIM	File" > dssim-0.tsv
FILES="0/300/* 0/600/* 0/1200/*"
for f in $FILES
do
	orig="${f/0\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-0.tsv
done

# calculate difference: 10
echo "DSSIM	File" > dssim-10.tsv
FILES="10/300/* 10/600/* 10/1200/*"
for f in $FILES
do
	orig="${f/10\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10.tsv
done

# calculate difference: 20
echo "DSSIM	File" > dssim-20.tsv
FILES="20/300/* 20/600/* 20/1200/*"
for f in $FILES
do
	orig="${f/20\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-20.tsv
done

# calculate difference: 30
echo "DSSIM	File" > dssim-30.tsv
FILES="30/300/* 30/600/* 30/1200/*"
for f in $FILES
do
	orig="${f/30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-30.tsv
done

# calculate difference: 40
echo "DSSIM	File" > dssim-40.tsv
FILES="40/300/* 40/600/* 40/1200/*"
for f in $FILES
do
	orig="${f/40\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-40.tsv
done

# calculate difference: 50
echo "DSSIM	File" > dssim-50.tsv
FILES="50/300/* 50/600/* 50/1200/*"
for f in $FILES
do
	orig="${f/50\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-50.tsv
done

# calculate difference: 60
echo "DSSIM	File" > dssim-60.tsv
FILES="60/300/* 60/600/* 60/1200/*"
for f in $FILES
do
	orig="${f/60\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-60.tsv
done

# calculate difference: 70
echo "DSSIM	File" > dssim-70.tsv
FILES="70/300/* 70/600/* 70/1200/*"
for f in $FILES
do
	orig="${f/70\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-70.tsv
done

# calculate difference: 80
echo "DSSIM	File" > dssim-80.tsv
FILES="80/300/* 80/600/* 80/1200/*"
for f in $FILES
do
	orig="${f/80\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-80.tsv
done

# calculate difference: 90
echo "DSSIM	File" > dssim-90.tsv
FILES="90/300/* 90/600/* 90/1200/*"
for f in $FILES
do
	orig="${f/90\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-90.tsv
done

# calculate difference: 100
echo "DSSIM	File" > dssim-100.tsv
FILES="100/300/* 100/600/* 100/1200/*"
for f in $FILES
do
	orig="${f/100\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-100.tsv
done
