#!/bin/bash

# setup dir/structure
rm -r 1 2 3 4 5 6 7 8 9 10
mkdir 1 2 3 4 5 6 7 8 9 10
mkdir 1/300 2/300 3/300 4/300 5/300 6/300 7/300 8/300 9/300 10/300
mkdir 1/600 2/600 3/600 4/600 5/600 6/600 7/600 8/600 9/600 10/600
mkdir 1/1200 2/1200 3/1200 4/1200 5/1200 6/1200 7/1200 8/1200 9/1200 10/1200

echo "# Test 47: colors" > conclusions.md

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 1/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 1/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 1/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 2`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 2/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 2/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 2/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 3`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 3/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 3/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 3/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 4`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 4/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 4/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 4/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 5`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 5/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 5/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 5/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 6`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 6/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 6/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 6/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 7`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 7/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 7/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 7/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 8`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 8/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 8/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 8/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 9`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 9/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 9/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 9/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS=$(identify -format '%k' $f)
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS \* 10`

	convert $f -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 10/300/$fn
	convert $f -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 10/600/$fn
	convert $f -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 10/1200/$fn
done


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv

# calculate difference: 1
echo "DSSIM	File" > dssim-1.tsv
FILES="1/300/* 1/600/* 1/1200/*"
for f in $FILES
do
	orig="${f/1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1.tsv
done

# calculate difference: 2
echo "DSSIM	File" > dssim-2.tsv
FILES="2/300/* 2/600/* 2/1200/*"
for f in $FILES
do
	orig="${f/2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2.tsv
done

# calculate difference: 3
echo "DSSIM	File" > dssim-3.tsv
FILES="3/300/* 3/600/* 3/1200/*"
for f in $FILES
do
	orig="${f/3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-3.tsv
done

# calculate difference: 4
echo "DSSIM	File" > dssim-4.tsv
FILES="4/300/* 4/600/* 4/1200/*"
for f in $FILES
do
	orig="${f/4\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-4.tsv
done

# calculate difference: 5
echo "DSSIM	File" > dssim-5.tsv
FILES="5/300/* 5/600/* 5/1200/*"
for f in $FILES
do
	orig="${f/5\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-5.tsv
done

# calculate difference: 6
echo "DSSIM	File" > dssim-6.tsv
FILES="6/300/* 6/600/* 6/1200/*"
for f in $FILES
do
	orig="${f/6\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-6.tsv
done

# calculate difference: 7
echo "DSSIM	File" > dssim-7.tsv
FILES="7/300/* 7/600/* 7/1200/*"
for f in $FILES
do
	orig="${f/7\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-7.tsv
done

# calculate difference: 8
echo "DSSIM	File" > dssim-8.tsv
FILES="8/300/* 8/600/* 8/1200/*"
for f in $FILES
do
	orig="${f/8\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-8.tsv
done

# calculate difference: 9
echo "DSSIM	File" > dssim-9.tsv
FILES="9/300/* 9/600/* 9/1200/*"
for f in $FILES
do
	orig="${f/9\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-9.tsv
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
