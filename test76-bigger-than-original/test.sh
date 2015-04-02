#!/bin/bash

# setup dir/structure
rm -r default colours1 colours2 colours3 colours4 colours5 colours6 colours7 colours8 colours9 colours10 type type-dither type-noposter-dither
mkdir default colours1 colours2 colours3 colours4 colours5 colours6 colours7 colours8 colours9 colours10 type type-dither type-noposter-dither
mkdir default/300 colours1/300 colours2/300 colours3/300 colours4/300 colours5/300 colours6/300 colours7/300 colours8/300 colours9/300 colours10/300 type/300 type-dither/300 type-noposter-dither/300
mkdir default/600 colours1/600 colours2/600 colours3/600 colours4/600 colours5/600 colours6/600 colours7/600 colours8/600 colours9/600 colours10/600 type/600 type-dither/600 type-noposter-dither/600
mkdir default/1200 colours1/1200 colours2/1200 colours3/1200 colours4/1200 colours5/1200 colours6/1200 colours7/1200 colours8/1200 colours9/1200 colours10/1200 type/1200 type-dither/1200 type-noposter-dither/1200

echo "# Test 76: bigger than original" > conclusions.md


# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# copy images
cp -r default/* colours1/
cp -r default/* colours2/
cp -r default/* colours3/
cp -r default/* colours4/
cp -r default/* colours5/
cp -r default/* colours6/
cp -r default/* colours7/
cp -r default/* colours8/
cp -r default/* colours9/
cp -r default/* colours10/
cp -r default/* type/
cp -r default/* type-dither/
cp -r default/* type-noposter-dither/


# re-resize
FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	NUMBER_OF_COLORS_ORIG=$(identify -format '%k' $f)
	TYPE=$(identify -format "%[type]" $f)
	control="${f/\.\.\/assets\-unoptimized\/fn}"
	controlSize=$(wc -c <"$control")


	# colours1 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 1`
	resize="colours1/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours1/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours1 600
	resize="colours1/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours1/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours1 1200
	resize="colours1/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours1/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours2 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 2`
	resize="colours2/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours2/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours2 600
	resize="colours2/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours2/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours2 1200
	resize="colours2/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours2/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours3 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 3`
	resize="colours3/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours3/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours3 600
	resize="colours3/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours3/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours3 1200
	resize="colours3/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours3/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours4 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 4`
	resize="colours4/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours4/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours4 600
	resize="colours4/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours4/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours4 1200
	resize="colours4/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours4/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours5 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 5`
	resize="colours5/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours5/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours5 600
	resize="colours5/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours5/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours5 1200
	resize="colours5/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours5/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours6 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 6`
	resize="colours6/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours6/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours6 600
	resize="colours6/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours6/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours6 1200
	resize="colours6/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours6/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours7 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 7`
	resize="colours7/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours7/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours7 600
	resize="colours7/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours7/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours7 1200
	resize="colours7/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours7/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours8 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 8`
	resize="colours8/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours8/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours8 600
	resize="colours8/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours8/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours8 1200
	resize="colours8/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours8/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours9 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 9`
	resize="colours9/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours9/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours9 600
	resize="colours9/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours9/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours9 1200
	resize="colours9/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours9/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# colours10 300
	NUMBER_OF_COLORS=`expr $NUMBER_OF_COLORS_ORIG \* 10`
	resize="colours10/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours10/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours10 600
	resize="colours10/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours10/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# colours10 1200
	resize="colours10/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path colours10/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -colors $NUMBER_OF_COLORS -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# type 300
	resize="type/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# type 600
	resize="type/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# type 1200
	resize="type/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# type-dither 300
	resize="type-dither/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type-dither/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -posterize 136 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# type-dither 600
	resize="type-dither/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type-dither/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -posterize 136 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# type-dither 1200
	resize="type-dither/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type-dither/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -posterize 136 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi


	# type-noposter-dither 300
	resize="type-noposter-dither/300$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type-noposter-dither/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8+0.065 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# type-noposter-dither 600
	resize="type-noposter-dither/600$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type-noposter-dither/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8+0.065 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi

	# type-noposter-dither 1200
	resize="type-noposter-dither/1200$fn"
	resizeSize=$(wc -c <"$resize")

	if [ "$resizeSize" -gt "$controlSize" ]; then
		echo "redoing $resize"
		mogrify -path type-noposter-dither/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8+0.065 -background Black -alpha Background -quality 82 -type $TYPE -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $f
	fi
done


# remove images that are being enlarged
rm default/300/6G.jpg default/600/6F.jpg default/600/6G.jpg default/1200/1C-1.png default/1200/1C-2.png default/1200/1C-3.png default/1200/4A-2.jpg default/1200/4A-3.png default/1200/6D.jpg default/1200/6F.jpg default/1200/6G.jpg
rm colours1/300/6G.jpg colours1/600/6F.jpg colours1/600/6G.jpg colours1/1200/1C-1.png colours1/1200/1C-2.png colours1/1200/1C-3.png colours1/1200/4A-2.jpg colours1/1200/4A-3.png colours1/1200/6D.jpg colours1/1200/6F.jpg colours1/1200/6G.jpg
rm colours2/300/6G.jpg colours2/600/6F.jpg colours2/600/6G.jpg colours2/1200/1C-1.png colours2/1200/1C-2.png colours2/1200/1C-3.png colours2/1200/4A-2.jpg colours2/1200/4A-3.png colours2/1200/6D.jpg colours2/1200/6F.jpg colours2/1200/6G.jpg
rm colours3/300/6G.jpg colours3/600/6F.jpg colours3/600/6G.jpg colours3/1200/1C-1.png colours3/1200/1C-2.png colours3/1200/1C-3.png colours3/1200/4A-2.jpg colours3/1200/4A-3.png colours3/1200/6D.jpg colours3/1200/6F.jpg colours3/1200/6G.jpg
rm colours4/300/6G.jpg colours4/600/6F.jpg colours4/600/6G.jpg colours4/1200/1C-1.png colours4/1200/1C-2.png colours4/1200/1C-3.png colours4/1200/4A-2.jpg colours4/1200/4A-3.png colours4/1200/6D.jpg colours4/1200/6F.jpg colours4/1200/6G.jpg
rm colours5/300/6G.jpg colours5/600/6F.jpg colours5/600/6G.jpg colours5/1200/1C-1.png colours5/1200/1C-2.png colours5/1200/1C-3.png colours5/1200/4A-2.jpg colours5/1200/4A-3.png colours5/1200/6D.jpg colours5/1200/6F.jpg colours5/1200/6G.jpg
rm colours6/300/6G.jpg colours6/600/6F.jpg colours6/600/6G.jpg colours6/1200/1C-1.png colours6/1200/1C-2.png colours6/1200/1C-3.png colours6/1200/4A-2.jpg colours6/1200/4A-3.png colours6/1200/6D.jpg colours6/1200/6F.jpg colours6/1200/6G.jpg
rm colours7/300/6G.jpg colours7/600/6F.jpg colours7/600/6G.jpg colours7/1200/1C-1.png colours7/1200/1C-2.png colours7/1200/1C-3.png colours7/1200/4A-2.jpg colours7/1200/4A-3.png colours7/1200/6D.jpg colours7/1200/6F.jpg colours7/1200/6G.jpg
rm colours8/300/6G.jpg colours8/600/6F.jpg colours8/600/6G.jpg colours8/1200/1C-1.png colours8/1200/1C-2.png colours8/1200/1C-3.png colours8/1200/4A-2.jpg colours8/1200/4A-3.png colours8/1200/6D.jpg colours8/1200/6F.jpg colours8/1200/6G.jpg
rm colours9/300/6G.jpg colours9/600/6F.jpg colours9/600/6G.jpg colours9/1200/1C-1.png colours9/1200/1C-2.png colours9/1200/1C-3.png colours9/1200/4A-2.jpg colours9/1200/4A-3.png colours9/1200/6D.jpg colours9/1200/6F.jpg colours9/1200/6G.jpg
rm colours10/300/6G.jpg colours10/600/6F.jpg colours10/600/6G.jpg colours10/1200/1C-1.png colours10/1200/1C-2.png colours10/1200/1C-3.png colours10/1200/4A-2.jpg colours10/1200/4A-3.png colours10/1200/6D.jpg colours10/1200/6F.jpg colours10/1200/6G.jpg
rm type/300/6G.jpg type/600/6F.jpg type/600/6G.jpg type/1200/1C-1.png type/1200/1C-2.png type/1200/1C-3.png type/1200/4A-2.jpg type/1200/4A-3.png type/1200/6D.jpg type/1200/6F.jpg type/1200/6G.jpg
rm type-dither/300/6G.jpg type-dither/600/6F.jpg type-dither/600/6G.jpg type-dither/1200/1C-1.png type-dither/1200/1C-2.png type-dither/1200/1C-3.png type-dither/1200/4A-2.jpg type-dither/1200/4A-3.png type-dither/1200/6D.jpg type-dither/1200/6F.jpg type-dither/1200/6G.jpg
rm type-noposter-dither/300/6G.jpg type-noposter-dither/600/6F.jpg type-noposter-dither/600/6G.jpg type-noposter-dither/1200/1C-1.png type-noposter-dither/1200/1C-2.png type-noposter-dither/1200/1C-3.png type-noposter-dither/1200/4A-2.jpg type-noposter-dither/1200/4A-3.png type-noposter-dither/1200/6D.jpg type-noposter-dither/1200/6F.jpg type-noposter-dither/1200/6G.jpg


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default
echo "DSSIM	File" > dssim-default.tsv
FILES="default/300/*.png default/600/*.png default/1200/*.png default/300/*.jpg default/600/*.jpg default/1200/*.jpg"
for f in $FILES
do
	orig="${f/default\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default.tsv
done


# calculate difference: colours1
echo "DSSIM	File" > dssim-colours1.tsv
FILES="colours1/300/*.png colours1/600/*.png colours1/1200/*.png colours1/300/*.jpg colours1/600/*.jpg colours1/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours1.tsv
done


# calculate difference: colours2
echo "DSSIM	File" > dssim-colours2.tsv
FILES="colours2/300/*.png colours2/600/*.png colours2/1200/*.png colours2/300/*.jpg colours2/600/*.jpg colours2/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours2.tsv
done


# calculate difference: colours3
echo "DSSIM	File" > dssim-colours3.tsv
FILES="colours3/300/*.png colours3/600/*.png colours3/1200/*.png colours3/300/*.jpg colours3/600/*.jpg colours3/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours3.tsv
done


# calculate difference: colours4
echo "DSSIM	File" > dssim-colours4.tsv
FILES="colours4/300/*.png colours4/600/*.png colours4/1200/*.png colours4/300/*.jpg colours4/600/*.jpg colours4/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours4\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours4.tsv
done


# calculate difference: colours5
echo "DSSIM	File" > dssim-colours5.tsv
FILES="colours5/300/*.png colours5/600/*.png colours5/1200/*.png colours5/300/*.jpg colours5/600/*.jpg colours5/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours5\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours5.tsv
done


# calculate difference: colours6
echo "DSSIM	File" > dssim-colours6.tsv
FILES="colours6/300/*.png colours6/600/*.png colours6/1200/*.png colours6/300/*.jpg colours6/600/*.jpg colours6/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours6\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours6.tsv
done


# calculate difference: colours7
echo "DSSIM	File" > dssim-colours7.tsv
FILES="colours7/300/*.png colours7/600/*.png colours7/1200/*.png colours7/300/*.jpg colours7/600/*.jpg colours7/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours7\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours7.tsv
done


# calculate difference: colours8
echo "DSSIM	File" > dssim-colours8.tsv
FILES="colours8/300/*.png colours8/600/*.png colours8/1200/*.png colours8/300/*.jpg colours8/600/*.jpg colours8/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours8\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours8.tsv
done


# calculate difference: colours9
echo "DSSIM	File" > dssim-colours9.tsv
FILES="colours9/300/*.png colours9/600/*.png colours9/1200/*.png colours9/300/*.jpg colours9/600/*.jpg colours9/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours9\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours9.tsv
done


# calculate difference: colours10
echo "DSSIM	File" > dssim-colours10.tsv
FILES="colours10/300/*.png colours10/600/*.png colours10/1200/*.png colours10/300/*.jpg colours10/600/*.jpg colours10/1200/*.jpg"
for f in $FILES
do
	orig="${f/colours10\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-colours10.tsv
done


# calculate difference: type
echo "DSSIM	File" > dssim-type.tsv
FILES="type/300/*.png type/600/*.png type/1200/*.png type/300/*.jpg type/600/*.jpg type/1200/*.jpg"
for f in $FILES
do
	orig="${f/type\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-type.tsv
done


# calculate difference: type-dither
echo "DSSIM	File" > dssim-type-dither.tsv
FILES="type-dither/300/*.png type-dither/600/*.png type-dither/1200/*.png type-dither/300/*.jpg type-dither/600/*.jpg type-dither/1200/*.jpg"
for f in $FILES
do
	orig="${f/type-dither\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-type-dither.tsv
done


# calculate difference: type-noposter-dither
echo "DSSIM	File" > dssim-type-noposter-dither.tsv
FILES="type-noposter-dither/300/*.png type-noposter-dither/600/*.png type-noposter-dither/1200/*.png type-noposter-dither/300/*.jpg type-noposter-dither/600/*.jpg type-noposter-dither/1200/*.jpg"
for f in $FILES
do
	orig="${f/type-noposter-dither\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-type-noposter-dither.tsv
done
