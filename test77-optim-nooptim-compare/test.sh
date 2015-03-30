#!/bin/bash

# setup dir/structure
rm -r default c c+f c+f+p c+f+p+u c+f+u c+p c+p+u c+u f f+p f+p+u f+u p p+u u other
mkdir default c c+f c+f+p c+f+p+u c+f+u c+p c+p+u c+u f f+p f+p+u f+u p p+u u other
mkdir default/300 c/300 c+f/300 c+f+p/300 c+f+u/300 c+f+p+u/300 c+p/300 c+p+u/300 c+u/300 f/300 f+p/300 f+p+u/300 f+u/300 p/300 p+u/300 u/300 other/300
mkdir default/600 c/600 c+f/600 c+f+p/600 c+f+u/600 c+f+p+u/600 c+p/600 c+p+u/600 c+u/600 f/600 f+p/600 f+p+u/600 f+u/600 p/600 p+u/600 u/600 other/600
mkdir default/1200 c/1200 c+f/1200 c+f+p/1200 c+f+u/1200 c+f+p+u/1200 c+p/1200 c+p+u/1200 c+u/1200 f/1200 f+p/1200 f+p+u/1200 f+u/1200 p/1200 p+u/1200 u/1200 other/1200

echo "# Test 77: optim no-optim compare" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png

mogrify -path c/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+f/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+f+p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f+p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f+p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+f+p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f+p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f+p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+f+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+f+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+f+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true  -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true  -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true  -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true  -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true  -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true  -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path c+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path c+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path c+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path f/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path f/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path f/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path f/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path f/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path f/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png

mogrify -path f+p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.png
mogrify -path f+p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.png
mogrify -path f+p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.png

mogrify -path f+p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.png
mogrify -path f+p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.png
mogrify -path f+p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -interlace none ../assets-unoptimized/*.png

mogrify -path f+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path f+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path f+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path f+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png

mogrify -path p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.jpg
mogrify -path p/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.png
mogrify -path p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.jpg
mogrify -path p/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.png
mogrify -path p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.jpg
mogrify -path p/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.png

mogrify -path p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.jpg
mogrify -path p+u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.png
mogrify -path p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.jpg
mogrify -path p+u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.png
mogrify -path p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.jpg
mogrify -path p+u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -interlace none ../assets-unoptimized/*.png

mogrify -path u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path u/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path u/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png
mogrify -path u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.jpg
mogrify -path u/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-unoptimized/*.png

mogrify -path other/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path other/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path other/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path other/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path other/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path other/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.045 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# optimize
image_optim -r . --config-paths i_o.yml
picopt -r .
imageoptim -d . -q


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


# calculate difference: c
echo "DSSIM	File" > dssim-c.tsv
FILES="c/300/*.png c/600/*.png c/1200/*.png c/300/*.jpg c/600/*.jpg c/1200/*.jpg"
for f in $FILES
do
	orig="${f/c\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c.tsv
done


# calculate difference: c+f
echo "DSSIM	File" > dssim-c+f.tsv
FILES="c+f/300/*.png c+f/600/*.png c+f/1200/*.png c+f/300/*.jpg c+f/600/*.jpg c+f/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+f\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+f.tsv
done


# calculate difference: c+f+p
echo "DSSIM	File" > dssim-c+f+p.tsv
FILES="c+f+p/300/*.png c+f+p/600/*.png c+f+p/1200/*.png c+f+p/300/*.jpg c+f+p/600/*.jpg c+f+p/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+f+p\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+f+p.tsv
done


# calculate difference: c+f+p+u
echo "DSSIM	File" > dssim-c+f+p+u.tsv
FILES="c+f+p+u/300/*.png c+f+p+u/600/*.png c+f+p+u/1200/*.png c+f+p+u/300/*.jpg c+f+p+u/600/*.jpg c+f+p+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+f+p+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+f+p+u.tsv
done


# calculate difference: c+f+u
echo "DSSIM	File" > dssim-c+f+u.tsv
FILES="c+f+u/300/*.png c+f+u/600/*.png c+f+u/1200/*.png c+f+u/300/*.jpg c+f+u/600/*.jpg c+f+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+f+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+f+u.tsv
done


# calculate difference: c+p
echo "DSSIM	File" > dssim-c+p.tsv
FILES="c+p/300/*.png c+p/600/*.png c+p/1200/*.png c+p/300/*.jpg c+p/600/*.jpg c+p/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+p\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+p.tsv
done


# calculate difference: c+p+u
echo "DSSIM	File" > dssim-c+p+u.tsv
FILES="c+p+u/300/*.png c+p+u/600/*.png c+p+u/1200/*.png c+p+u/300/*.jpg c+p+u/600/*.jpg c+p+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+p+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+p+u.tsv
done


# calculate difference: c+u
echo "DSSIM	File" > dssim-c+u.tsv
FILES="c+u/300/*.png c+u/600/*.png c+u/1200/*.png c+u/300/*.jpg c+u/600/*.jpg c+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/c+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-c+u.tsv
done


# calculate difference: f
echo "DSSIM	File" > dssim-f.tsv
FILES="f/300/*.png f/600/*.png f/1200/*.png f/300/*.jpg f/600/*.jpg f/1200/*.jpg"
for f in $FILES
do
	orig="${f/f\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-f.tsv
done


# calculate difference: f+p
echo "DSSIM	File" > dssim-f+p.tsv
FILES="f+p/300/*.png f+p/600/*.png f+p/1200/*.png f+p/300/*.jpg f+p/600/*.jpg f+p/1200/*.jpg"
for f in $FILES
do
	orig="${f/f+p\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-f+p.tsv
done


# calculate difference: f+p+u
echo "DSSIM	File" > dssim-f+p+u.tsv
FILES="f+p+u/300/*.png f+p+u/600/*.png f+p+u/1200/*.png f+p+u/300/*.jpg f+p+u/600/*.jpg f+p+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/f+p+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-f+p+u.tsv
done


# calculate difference: f+u
echo "DSSIM	File" > dssim-f+u.tsv
FILES="f+u/300/*.png f+u/600/*.png f+u/1200/*.png f+u/300/*.jpg f+u/600/*.jpg f+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/f+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-f+u.tsv
done


# calculate difference: p
echo "DSSIM	File" > dssim-p.tsv
FILES="p/300/*.png p/600/*.png p/1200/*.png p/300/*.jpg p/600/*.jpg p/1200/*.jpg"
for f in $FILES
do
	orig="${f/p\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-p.tsv
done


# calculate difference: p+u
echo "DSSIM	File" > dssim-p+u.tsv
FILES="p+u/300/*.png p+u/600/*.png p+u/1200/*.png p+u/300/*.jpg p+u/600/*.jpg p+u/1200/*.jpg"
for f in $FILES
do
	orig="${f/p+u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-p+u.tsv
done


# calculate difference: u
echo "DSSIM	File" > dssim-u.tsv
FILES="u/300/*.png u/600/*.png u/1200/*.png u/300/*.jpg u/600/*.jpg u/1200/*.jpg"
for f in $FILES
do
	orig="${f/u\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-u.tsv
done


# calculate difference: other
echo "DSSIM	File" > dssim-other.tsv
FILES="other/300/*.png other/600/*.png other/1200/*.png other/300/*.jpg other/600/*.jpg other/1200/*.jpg"
for f in $FILES
do
	orig="${f/other\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-other.tsv
done
