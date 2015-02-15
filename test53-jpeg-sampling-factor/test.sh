#!/bin/bash

# setup dir/structure
rm -r default 1x1 1x2 2x1 2x2 1x1-1x1 1x1-1x2 1x1-2x1 1x1-2x2 1x2-1x1 1x2-1x2 1x2-2x1 1x2-2x2 2x1-1x1 2x1-1x2 2x1-2x1 2x1-2x2 2x2-1x1 2x2-1x2 2x2-2x1 2x2-2x2 1x1-1x1-1x1 1x1-1x1-1x2 1x1-1x1-2x1 1x1-1x1-2x2 1x1-1x2-1x1 1x1-1x2-1x2 1x1-1x2-2x1 1x1-1x2-2x2 1x1-2x1-1x1 1x1-2x1-1x2 1x1-2x1-2x1 1x1-2x1-2x2 1x1-2x2-1x1 1x1-2x2-1x2 1x1-2x2-2x1 1x1-2x2-2x2 1x2-1x1-1x1 1x2-1x1-1x2 1x2-1x1-2x1 1x2-1x1-2x2 1x2-1x2-1x1 1x2-1x2-1x2 1x2-1x2-2x1 1x2-1x2-2x2 1x2-2x1-1x1 1x2-2x1-1x2 1x2-2x1-2x1 1x2-2x1-2x2 1x2-2x2-1x1 1x2-2x2-1x2 1x2-2x2-2x1 1x2-2x2-2x2 2x1-1x1-1x1 2x1-1x1-1x2 2x1-1x1-2x1 2x1-1x1-2x2 2x1-1x2-1x1 2x1-1x2-1x2 2x1-1x2-2x1 2x1-1x2-2x2 2x1-2x1-1x1 2x1-2x1-1x2 2x1-2x1-2x1 2x1-2x1-2x2 2x1-2x2-1x1 2x1-2x2-1x2 2x1-2x2-2x1 2x1-2x2-2x2 2x2-1x1-1x1 2x2-1x1-1x2 2x2-1x1-2x1 2x2-1x1-2x2 2x2-1x2-1x1 2x2-1x2-1x2 2x2-1x2-2x1 2x2-1x2-2x2 2x2-2x1-1x1 2x2-2x1-1x2 2x2-2x1-2x1 2x2-2x1-2x2 2x2-2x2-1x1 2x2-2x2-1x2 2x2-2x2-2x1 2x2-2x2-2x2
mkdir default 1x1 1x2 2x1 2x2 1x1-1x1 1x1-1x2 1x1-2x1 1x1-2x2 1x2-1x1 1x2-1x2 1x2-2x1 1x2-2x2 2x1-1x1 2x1-1x2 2x1-2x1 2x1-2x2 2x2-1x1 2x2-1x2 2x2-2x1 2x2-2x2 1x1-1x1-1x1 1x1-1x1-1x2 1x1-1x1-2x1 1x1-1x1-2x2 1x1-1x2-1x1 1x1-1x2-1x2 1x1-1x2-2x1 1x1-1x2-2x2 1x1-2x1-1x1 1x1-2x1-1x2 1x1-2x1-2x1 1x1-2x1-2x2 1x1-2x2-1x1 1x1-2x2-1x2 1x1-2x2-2x1 1x1-2x2-2x2 1x2-1x1-1x1 1x2-1x1-1x2 1x2-1x1-2x1 1x2-1x1-2x2 1x2-1x2-1x1 1x2-1x2-1x2 1x2-1x2-2x1 1x2-1x2-2x2 1x2-2x1-1x1 1x2-2x1-1x2 1x2-2x1-2x1 1x2-2x1-2x2 1x2-2x2-1x1 1x2-2x2-1x2 1x2-2x2-2x1 1x2-2x2-2x2 2x1-1x1-1x1 2x1-1x1-1x2 2x1-1x1-2x1 2x1-1x1-2x2 2x1-1x2-1x1 2x1-1x2-1x2 2x1-1x2-2x1 2x1-1x2-2x2 2x1-2x1-1x1 2x1-2x1-1x2 2x1-2x1-2x1 2x1-2x1-2x2 2x1-2x2-1x1 2x1-2x2-1x2 2x1-2x2-2x1 2x1-2x2-2x2 2x2-1x1-1x1 2x2-1x1-1x2 2x2-1x1-2x1 2x2-1x1-2x2 2x2-1x2-1x1 2x2-1x2-1x2 2x2-1x2-2x1 2x2-1x2-2x2 2x2-2x1-1x1 2x2-2x1-1x2 2x2-2x1-2x1 2x2-2x1-2x2 2x2-2x2-1x1 2x2-2x2-1x2 2x2-2x2-2x1 2x2-2x2-2x2
mkdir default/300 1x1/300 1x2/300 2x1/300 2x2/300 1x1-1x1/300 1x1-1x2/300 1x1-2x1/300 1x1-2x2/300 1x2-1x1/300 1x2-1x2/300 1x2-2x1/300 1x2-2x2/300 2x1-1x1/300 2x1-1x2/300 2x1-2x1/300 2x1-2x2/300 2x2-1x1/300 2x2-1x2/300 2x2-2x1/300 2x2-2x2/300 1x1-1x1-1x1/300 1x1-1x1-1x2/300 1x1-1x1-2x1/300 1x1-1x1-2x2/300 1x1-1x2-1x1/300 1x1-1x2-1x2/300 1x1-1x2-2x1/300 1x1-1x2-2x2/300 1x1-2x1-1x1/300 1x1-2x1-1x2/300 1x1-2x1-2x1/300 1x1-2x1-2x2/300 1x1-2x2-1x1/300 1x1-2x2-1x2/300 1x1-2x2-2x1/300 1x1-2x2-2x2/300 1x2-1x1-1x1/300 1x2-1x1-1x2/300 1x2-1x1-2x1/300 1x2-1x1-2x2/300 1x2-1x2-1x1/300 1x2-1x2-1x2/300 1x2-1x2-2x1/300 1x2-1x2-2x2/300 1x2-2x1-1x1/300 1x2-2x1-1x2/300 1x2-2x1-2x1/300 1x2-2x1-2x2/300 1x2-2x2-1x1/300 1x2-2x2-1x2/300 1x2-2x2-2x1/300 1x2-2x2-2x2/300 2x1-1x1-1x1/300 2x1-1x1-1x2/300 2x1-1x1-2x1/300 2x1-1x1-2x2/300 2x1-1x2-1x1/300 2x1-1x2-1x2/300 2x1-1x2-2x1/300 2x1-1x2-2x2/300 2x1-2x1-1x1/300 2x1-2x1-1x2/300 2x1-2x1-2x1/300 2x1-2x1-2x2/300 2x1-2x2-1x1/300 2x1-2x2-1x2/300 2x1-2x2-2x1/300 2x1-2x2-2x2/300 2x2-1x1-1x1/300 2x2-1x1-1x2/300 2x2-1x1-2x1/300 2x2-1x1-2x2/300 2x2-1x2-1x1/300 2x2-1x2-1x2/300 2x2-1x2-2x1/300 2x2-1x2-2x2/300 2x2-2x1-1x1/300 2x2-2x1-1x2/300 2x2-2x1-2x1/300 2x2-2x1-2x2/300 2x2-2x2-1x1/300 2x2-2x2-1x2/300 2x2-2x2-2x1/300 2x2-2x2-2x2/300
mkdir default/600 1x1/600 1x2/600 2x1/600 2x2/600 1x1-1x1/600 1x1-1x2/600 1x1-2x1/600 1x1-2x2/600 1x2-1x1/600 1x2-1x2/600 1x2-2x1/600 1x2-2x2/600 2x1-1x1/600 2x1-1x2/600 2x1-2x1/600 2x1-2x2/600 2x2-1x1/600 2x2-1x2/600 2x2-2x1/600 2x2-2x2/600 1x1-1x1-1x1/600 1x1-1x1-1x2/600 1x1-1x1-2x1/600 1x1-1x1-2x2/600 1x1-1x2-1x1/600 1x1-1x2-1x2/600 1x1-1x2-2x1/600 1x1-1x2-2x2/600 1x1-2x1-1x1/600 1x1-2x1-1x2/600 1x1-2x1-2x1/600 1x1-2x1-2x2/600 1x1-2x2-1x1/600 1x1-2x2-1x2/600 1x1-2x2-2x1/600 1x1-2x2-2x2/600 1x2-1x1-1x1/600 1x2-1x1-1x2/600 1x2-1x1-2x1/600 1x2-1x1-2x2/600 1x2-1x2-1x1/600 1x2-1x2-1x2/600 1x2-1x2-2x1/600 1x2-1x2-2x2/600 1x2-2x1-1x1/600 1x2-2x1-1x2/600 1x2-2x1-2x1/600 1x2-2x1-2x2/600 1x2-2x2-1x1/600 1x2-2x2-1x2/600 1x2-2x2-2x1/600 1x2-2x2-2x2/600 2x1-1x1-1x1/600 2x1-1x1-1x2/600 2x1-1x1-2x1/600 2x1-1x1-2x2/600 2x1-1x2-1x1/600 2x1-1x2-1x2/600 2x1-1x2-2x1/600 2x1-1x2-2x2/600 2x1-2x1-1x1/600 2x1-2x1-1x2/600 2x1-2x1-2x1/600 2x1-2x1-2x2/600 2x1-2x2-1x1/600 2x1-2x2-1x2/600 2x1-2x2-2x1/600 2x1-2x2-2x2/600 2x2-1x1-1x1/600 2x2-1x1-1x2/600 2x2-1x1-2x1/600 2x2-1x1-2x2/600 2x2-1x2-1x1/600 2x2-1x2-1x2/600 2x2-1x2-2x1/600 2x2-1x2-2x2/600 2x2-2x1-1x1/600 2x2-2x1-1x2/600 2x2-2x1-2x1/600 2x2-2x1-2x2/600 2x2-2x2-1x1/600 2x2-2x2-1x2/600 2x2-2x2-2x1/600 2x2-2x2-2x2/600
mkdir default/1200 1x1/1200 1x2/1200 2x1/1200 2x2/1200 1x1-1x1/1200 1x1-1x2/1200 1x1-2x1/1200 1x1-2x2/1200 1x2-1x1/1200 1x2-1x2/1200 1x2-2x1/1200 1x2-2x2/1200 2x1-1x1/1200 2x1-1x2/1200 2x1-2x1/1200 2x1-2x2/1200 2x2-1x1/1200 2x2-1x2/1200 2x2-2x1/1200 2x2-2x2/1200 1x1-1x1-1x1/1200 1x1-1x1-1x2/1200 1x1-1x1-2x1/1200 1x1-1x1-2x2/1200 1x1-1x2-1x1/1200 1x1-1x2-1x2/1200 1x1-1x2-2x1/1200 1x1-1x2-2x2/1200 1x1-2x1-1x1/1200 1x1-2x1-1x2/1200 1x1-2x1-2x1/1200 1x1-2x1-2x2/1200 1x1-2x2-1x1/1200 1x1-2x2-1x2/1200 1x1-2x2-2x1/1200 1x1-2x2-2x2/1200 1x2-1x1-1x1/1200 1x2-1x1-1x2/1200 1x2-1x1-2x1/1200 1x2-1x1-2x2/1200 1x2-1x2-1x1/1200 1x2-1x2-1x2/1200 1x2-1x2-2x1/1200 1x2-1x2-2x2/1200 1x2-2x1-1x1/1200 1x2-2x1-1x2/1200 1x2-2x1-2x1/1200 1x2-2x1-2x2/1200 1x2-2x2-1x1/1200 1x2-2x2-1x2/1200 1x2-2x2-2x1/1200 1x2-2x2-2x2/1200 2x1-1x1-1x1/1200 2x1-1x1-1x2/1200 2x1-1x1-2x1/1200 2x1-1x1-2x2/1200 2x1-1x2-1x1/1200 2x1-1x2-1x2/1200 2x1-1x2-2x1/1200 2x1-1x2-2x2/1200 2x1-2x1-1x1/1200 2x1-2x1-1x2/1200 2x1-2x1-2x1/1200 2x1-2x1-2x2/1200 2x1-2x2-1x1/1200 2x1-2x2-1x2/1200 2x1-2x2-2x1/1200 2x1-2x2-2x2/1200 2x2-1x1-1x1/1200 2x2-1x1-1x2/1200 2x2-1x1-2x1/1200 2x2-1x1-2x2/1200 2x2-1x2-1x1/1200 2x2-1x2-1x2/1200 2x2-1x2-2x1/1200 2x2-1x2-2x2/1200 2x2-2x1-1x1/1200 2x2-2x1-1x2/1200 2x2-2x1-2x1/1200 2x2-2x1-2x2/1200 2x2-2x2-1x1/1200 2x2-2x2-1x2/1200 2x2-2x2-2x1/1200 2x2-2x2-2x2/1200

echo "# Test 53: jpeg sampling factor" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 1x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x1-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x1-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x1-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x1, 2x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 1x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 1x2-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 1x2-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 1x2-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="1x2, 2x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 1x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x1-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x1-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x1-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x1, 2x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-1x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 1x2, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x1-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x1, 2x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-1x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-1x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-1x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-1x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-1x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-1x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 1x2" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-2x1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-2x1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x1" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x1" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-2x1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x1" -interlace none ../assets-optimized/*.png

mogrify -path 2x2-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-2x2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-2x2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x2" -interlace none ../assets-optimized/*.png
mogrify -path 2x2-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x2" -interlace none ../assets-optimized/*.jpg
mogrify -path 2x2-2x2-2x2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -define jpeg:sampling-factor="2x2, 2x2, 2x2" -interlace none ../assets-optimized/*.png


# optimize
# way too many, wait until after quality is determined


# calculate file sizes
# wait until after optimization
# echo "Filename	Size" > ./filesize.tsv
# ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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

# calculate difference: 1x1
echo "DSSIM	File" > dssim-1x1.tsv
FILES="1x1/300/* 1x1/600/* 1x1/1200/*"
for f in $FILES
do
	orig="${f/1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1.tsv
done

# calculate difference: 1x2
echo "DSSIM	File" > dssim-1x2.tsv
FILES="1x2/300/* 1x2/600/* 1x2/1200/*"
for f in $FILES
do
	orig="${f/1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2.tsv
done

# calculate difference: 2x1
echo "DSSIM	File" > dssim-2x1.tsv
FILES="2x1/300/* 2x1/600/* 2x1/1200/*"
for f in $FILES
do
	orig="${f/2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1.tsv
done

# calculate difference: 2x2
echo "DSSIM	File" > dssim-2x2.tsv
FILES="2x2/300/* 2x2/600/* 2x2/1200/*"
for f in $FILES
do
	orig="${f/2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2.tsv
done

# calculate difference: 1x1-1x1
echo "DSSIM	File" > dssim-1x1-1x1.tsv
FILES="1x1-1x1/300/* 1x1-1x1/600/* 1x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x1.tsv
done

# calculate difference: 1x1-1x2
echo "DSSIM	File" > dssim-1x1-1x2.tsv
FILES="1x1-1x2/300/* 1x1-1x2/600/* 1x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x2.tsv
done

# calculate difference: 1x1-2x1
echo "DSSIM	File" > dssim-1x1-2x1.tsv
FILES="1x1-2x1/300/* 1x1-2x1/600/* 1x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x1.tsv
done

# calculate difference: 1x1-2x2
echo "DSSIM	File" > dssim-1x1-2x2.tsv
FILES="1x1-2x2/300/* 1x1-2x2/600/* 1x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x2.tsv
done

# calculate difference: 1x2-1x1
echo "DSSIM	File" > dssim-1x2-1x1.tsv
FILES="1x2-1x1/300/* 1x2-1x1/600/* 1x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x1.tsv
done

# calculate difference: 1x2-1x2
echo "DSSIM	File" > dssim-1x2-1x2.tsv
FILES="1x2-1x2/300/* 1x2-1x2/600/* 1x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x2.tsv
done

# calculate difference: 1x2-2x1
echo "DSSIM	File" > dssim-1x2-2x1.tsv
FILES="1x2-2x1/300/* 1x2-2x1/600/* 1x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x1.tsv
done

# calculate difference: 1x2-2x2
echo "DSSIM	File" > dssim-1x2-2x2.tsv
FILES="1x2-2x2/300/* 1x2-2x2/600/* 1x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x2.tsv
done

# calculate difference: 2x1-1x1
echo "DSSIM	File" > dssim-2x1-1x1.tsv
FILES="2x1-1x1/300/* 2x1-1x1/600/* 2x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x1.tsv
done

# calculate difference: 2x1-1x2
echo "DSSIM	File" > dssim-2x1-1x2.tsv
FILES="2x1-1x2/300/* 2x1-1x2/600/* 2x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x2.tsv
done

# calculate difference: 2x1-2x1
echo "DSSIM	File" > dssim-2x1-2x1.tsv
FILES="2x1-2x1/300/* 2x1-2x1/600/* 2x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x1.tsv
done

# calculate difference: 2x1-2x2
echo "DSSIM	File" > dssim-2x1-2x2.tsv
FILES="2x1-2x2/300/* 2x1-2x2/600/* 2x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x2.tsv
done

# calculate difference: 2x2-1x1
echo "DSSIM	File" > dssim-2x2-1x1.tsv
FILES="2x2-1x1/300/* 2x2-1x1/600/* 2x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x1.tsv
done

# calculate difference: 2x2-1x2
echo "DSSIM	File" > dssim-2x2-1x2.tsv
FILES="2x2-1x2/300/* 2x2-1x2/600/* 2x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x2.tsv
done

# calculate difference: 2x2-2x1
echo "DSSIM	File" > dssim-2x2-2x1.tsv
FILES="2x2-2x1/300/* 2x2-2x1/600/* 2x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x1.tsv
done

# calculate difference: 2x2-2x2
echo "DSSIM	File" > dssim-2x2-2x2.tsv
FILES="2x2-2x2/300/* 2x2-2x2/600/* 2x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x2.tsv
done

# calculate difference: 1x1-1x1-1x1
echo "DSSIM	File" > dssim-1x1-1x1-1x1.tsv
FILES="1x1-1x1-1x1/300/* 1x1-1x1-1x1/600/* 1x1-1x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x1-1x1.tsv
done

# calculate difference: 1x1-1x1-1x2
echo "DSSIM	File" > dssim-1x1-1x1-1x2.tsv
FILES="1x1-1x1-1x2/300/* 1x1-1x1-1x2/600/* 1x1-1x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x1-1x2.tsv
done

# calculate difference: 1x1-1x1-2x1
echo "DSSIM	File" > dssim-1x1-1x1-2x1.tsv
FILES="1x1-1x1-2x1/300/* 1x1-1x1-2x1/600/* 1x1-1x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x1-2x1.tsv
done

# calculate difference: 1x1-1x1-2x2
echo "DSSIM	File" > dssim-1x1-1x1-2x2.tsv
FILES="1x1-1x1-2x2/300/* 1x1-1x1-2x2/600/* 1x1-1x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x1-2x2.tsv
done

# calculate difference: 1x1-1x2-1x1
echo "DSSIM	File" > dssim-1x1-1x2-1x1.tsv
FILES="1x1-1x2-1x1/300/* 1x1-1x2-1x1/600/* 1x1-1x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x2-1x1.tsv
done

# calculate difference: 1x1-1x2-1x2
echo "DSSIM	File" > dssim-1x1-1x2-1x2.tsv
FILES="1x1-1x2-1x2/300/* 1x1-1x2-1x2/600/* 1x1-1x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x2-1x2.tsv
done

# calculate difference: 1x1-1x2-2x1
echo "DSSIM	File" > dssim-1x1-1x2-2x1.tsv
FILES="1x1-1x2-2x1/300/* 1x1-1x2-2x1/600/* 1x1-1x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x2-2x1.tsv
done

# calculate difference: 1x1-1x2-2x2
echo "DSSIM	File" > dssim-1x1-1x2-2x2.tsv
FILES="1x1-1x2-2x2/300/* 1x1-1x2-2x2/600/* 1x1-1x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-1x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-1x2-2x2.tsv
done

# calculate difference: 1x1-2x1-1x1
echo "DSSIM	File" > dssim-1x1-2x1-1x1.tsv
FILES="1x1-2x1-1x1/300/* 1x1-2x1-1x1/600/* 1x1-2x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x1-1x1.tsv
done

# calculate difference: 1x1-2x1-1x2
echo "DSSIM	File" > dssim-1x1-2x1-1x2.tsv
FILES="1x1-2x1-1x2/300/* 1x1-2x1-1x2/600/* 1x1-2x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x1-1x2.tsv
done

# calculate difference: 1x1-2x1-2x1
echo "DSSIM	File" > dssim-1x1-2x1-2x1.tsv
FILES="1x1-2x1-2x1/300/* 1x1-2x1-2x1/600/* 1x1-2x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x1-2x1.tsv
done

# calculate difference: 1x1-2x1-2x2
echo "DSSIM	File" > dssim-1x1-2x1-2x2.tsv
FILES="1x1-2x1-2x2/300/* 1x1-2x1-2x2/600/* 1x1-2x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x1-2x2.tsv
done

# calculate difference: 1x1-2x2-1x1
echo "DSSIM	File" > dssim-1x1-2x2-1x1.tsv
FILES="1x1-2x2-1x1/300/* 1x1-2x2-1x1/600/* 1x1-2x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x2-1x1.tsv
done

# calculate difference: 1x1-2x2-1x2
echo "DSSIM	File" > dssim-1x1-2x2-1x2.tsv
FILES="1x1-2x2-1x2/300/* 1x1-2x2-1x2/600/* 1x1-2x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x2-1x2.tsv
done

# calculate difference: 1x1-2x2-2x1
echo "DSSIM	File" > dssim-1x1-2x2-2x1.tsv
FILES="1x1-2x2-2x1/300/* 1x1-2x2-2x1/600/* 1x1-2x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x2-2x1.tsv
done

# calculate difference: 1x1-2x2-2x2
echo "DSSIM	File" > dssim-1x1-2x2-2x2.tsv
FILES="1x1-2x2-2x2/300/* 1x1-2x2-2x2/600/* 1x1-2x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x1-2x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x1-2x2-2x2.tsv
done

# calculate difference: 1x2-1x1-1x1
echo "DSSIM	File" > dssim-1x2-1x1-1x1.tsv
FILES="1x2-1x1-1x1/300/* 1x2-1x1-1x1/600/* 1x2-1x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x1-1x1.tsv
done

# calculate difference: 1x2-1x1-1x2
echo "DSSIM	File" > dssim-1x2-1x1-1x2.tsv
FILES="1x2-1x1-1x2/300/* 1x2-1x1-1x2/600/* 1x2-1x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x1-1x2.tsv
done

# calculate difference: 1x2-1x1-2x1
echo "DSSIM	File" > dssim-1x2-1x1-2x1.tsv
FILES="1x2-1x1-2x1/300/* 1x2-1x1-2x1/600/* 1x2-1x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x1-2x1.tsv
done

# calculate difference: 1x2-1x1-2x2
echo "DSSIM	File" > dssim-1x2-1x1-2x2.tsv
FILES="1x2-1x1-2x2/300/* 1x2-1x1-2x2/600/* 1x2-1x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x1-2x2.tsv
done

# calculate difference: 1x2-1x2-1x1
echo "DSSIM	File" > dssim-1x2-1x2-1x1.tsv
FILES="1x2-1x2-1x1/300/* 1x2-1x2-1x1/600/* 1x2-1x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x2-1x1.tsv
done

# calculate difference: 1x2-1x2-1x2
echo "DSSIM	File" > dssim-1x2-1x2-1x2.tsv
FILES="1x2-1x2-1x2/300/* 1x2-1x2-1x2/600/* 1x2-1x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x2-1x2.tsv
done

# calculate difference: 1x2-1x2-2x1
echo "DSSIM	File" > dssim-1x2-1x2-2x1.tsv
FILES="1x2-1x2-2x1/300/* 1x2-1x2-2x1/600/* 1x2-1x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x2-2x1.tsv
done

# calculate difference: 1x2-1x2-2x2
echo "DSSIM	File" > dssim-1x2-1x2-2x2.tsv
FILES="1x2-1x2-2x2/300/* 1x2-1x2-2x2/600/* 1x2-1x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-1x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-1x2-2x2.tsv
done

# calculate difference: 1x2-2x1-1x1
echo "DSSIM	File" > dssim-1x2-2x1-1x1.tsv
FILES="1x2-2x1-1x1/300/* 1x2-2x1-1x1/600/* 1x2-2x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x1-1x1.tsv
done

# calculate difference: 1x2-2x1-1x2
echo "DSSIM	File" > dssim-1x2-2x1-1x2.tsv
FILES="1x2-2x1-1x2/300/* 1x2-2x1-1x2/600/* 1x2-2x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x1-1x2.tsv
done

# calculate difference: 1x2-2x1-2x1
echo "DSSIM	File" > dssim-1x2-2x1-2x1.tsv
FILES="1x2-2x1-2x1/300/* 1x2-2x1-2x1/600/* 1x2-2x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x1-2x1.tsv
done

# calculate difference: 1x2-2x1-2x2
echo "DSSIM	File" > dssim-1x2-2x1-2x2.tsv
FILES="1x2-2x1-2x2/300/* 1x2-2x1-2x2/600/* 1x2-2x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x1-2x2.tsv
done

# calculate difference: 1x2-2x2-1x1
echo "DSSIM	File" > dssim-1x2-2x2-1x1.tsv
FILES="1x2-2x2-1x1/300/* 1x2-2x2-1x1/600/* 1x2-2x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x2-1x1.tsv
done

# calculate difference: 1x2-2x2-1x2
echo "DSSIM	File" > dssim-1x2-2x2-1x2.tsv
FILES="1x2-2x2-1x2/300/* 1x2-2x2-1x2/600/* 1x2-2x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x2-1x2.tsv
done

# calculate difference: 1x2-2x2-2x1
echo "DSSIM	File" > dssim-1x2-2x2-2x1.tsv
FILES="1x2-2x2-2x1/300/* 1x2-2x2-2x1/600/* 1x2-2x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x2-2x1.tsv
done

# calculate difference: 1x2-2x2-2x2
echo "DSSIM	File" > dssim-1x2-2x2-2x2.tsv
FILES="1x2-2x2-2x2/300/* 1x2-2x2-2x2/600/* 1x2-2x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/1x2-2x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1x2-2x2-2x2.tsv
done

# calculate difference: 2x1-1x1-1x1
echo "DSSIM	File" > dssim-2x1-1x1-1x1.tsv
FILES="2x1-1x1-1x1/300/* 2x1-1x1-1x1/600/* 2x1-1x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x1-1x1.tsv
done

# calculate difference: 2x1-1x1-1x2
echo "DSSIM	File" > dssim-2x1-1x1-1x2.tsv
FILES="2x1-1x1-1x2/300/* 2x1-1x1-1x2/600/* 2x1-1x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x1-1x2.tsv
done

# calculate difference: 2x1-1x1-2x1
echo "DSSIM	File" > dssim-2x1-1x1-2x1.tsv
FILES="2x1-1x1-2x1/300/* 2x1-1x1-2x1/600/* 2x1-1x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x1-2x1.tsv
done

# calculate difference: 2x1-1x1-2x2
echo "DSSIM	File" > dssim-2x1-1x1-2x2.tsv
FILES="2x1-1x1-2x2/300/* 2x1-1x1-2x2/600/* 2x1-1x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x1-2x2.tsv
done

# calculate difference: 2x1-1x2-1x1
echo "DSSIM	File" > dssim-2x1-1x2-1x1.tsv
FILES="2x1-1x2-1x1/300/* 2x1-1x2-1x1/600/* 2x1-1x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x2-1x1.tsv
done

# calculate difference: 2x1-1x2-1x2
echo "DSSIM	File" > dssim-2x1-1x2-1x2.tsv
FILES="2x1-1x2-1x2/300/* 2x1-1x2-1x2/600/* 2x1-1x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x2-1x2.tsv
done

# calculate difference: 2x1-1x2-2x1
echo "DSSIM	File" > dssim-2x1-1x2-2x1.tsv
FILES="2x1-1x2-2x1/300/* 2x1-1x2-2x1/600/* 2x1-1x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x2-2x1.tsv
done

# calculate difference: 2x1-1x2-2x2
echo "DSSIM	File" > dssim-2x1-1x2-2x2.tsv
FILES="2x1-1x2-2x2/300/* 2x1-1x2-2x2/600/* 2x1-1x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-1x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-1x2-2x2.tsv
done

# calculate difference: 2x1-2x1-1x1
echo "DSSIM	File" > dssim-2x1-2x1-1x1.tsv
FILES="2x1-2x1-1x1/300/* 2x1-2x1-1x1/600/* 2x1-2x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x1-1x1.tsv
done

# calculate difference: 2x1-2x1-1x2
echo "DSSIM	File" > dssim-2x1-2x1-1x2.tsv
FILES="2x1-2x1-1x2/300/* 2x1-2x1-1x2/600/* 2x1-2x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x1-1x2.tsv
done

# calculate difference: 2x1-2x1-2x1
echo "DSSIM	File" > dssim-2x1-2x1-2x1.tsv
FILES="2x1-2x1-2x1/300/* 2x1-2x1-2x1/600/* 2x1-2x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x1-2x1.tsv
done

# calculate difference: 2x1-2x1-2x2
echo "DSSIM	File" > dssim-2x1-2x1-2x2.tsv
FILES="2x1-2x1-2x2/300/* 2x1-2x1-2x2/600/* 2x1-2x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x1-2x2.tsv
done

# calculate difference: 2x1-2x2-1x1
echo "DSSIM	File" > dssim-2x1-2x2-1x1.tsv
FILES="2x1-2x2-1x1/300/* 2x1-2x2-1x1/600/* 2x1-2x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x2-1x1.tsv
done

# calculate difference: 2x1-2x2-1x2
echo "DSSIM	File" > dssim-2x1-2x2-1x2.tsv
FILES="2x1-2x2-1x2/300/* 2x1-2x2-1x2/600/* 2x1-2x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x2-1x2.tsv
done

# calculate difference: 2x1-2x2-2x1
echo "DSSIM	File" > dssim-2x1-2x2-2x1.tsv
FILES="2x1-2x2-2x1/300/* 2x1-2x2-2x1/600/* 2x1-2x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x2-2x1.tsv
done

# calculate difference: 2x1-2x2-2x2
echo "DSSIM	File" > dssim-2x1-2x2-2x2.tsv
FILES="2x1-2x2-2x2/300/* 2x1-2x2-2x2/600/* 2x1-2x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x1-2x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x1-2x2-2x2.tsv
done

# calculate difference: 2x2-1x1-1x1
echo "DSSIM	File" > dssim-2x2-1x1-1x1.tsv
FILES="2x2-1x1-1x1/300/* 2x2-1x1-1x1/600/* 2x2-1x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x1-1x1.tsv
done

# calculate difference: 2x2-1x1-1x2
echo "DSSIM	File" > dssim-2x2-1x1-1x2.tsv
FILES="2x2-1x1-1x2/300/* 2x2-1x1-1x2/600/* 2x2-1x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x1-1x2.tsv
done

# calculate difference: 2x2-1x1-2x1
echo "DSSIM	File" > dssim-2x2-1x1-2x1.tsv
FILES="2x2-1x1-2x1/300/* 2x2-1x1-2x1/600/* 2x2-1x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x1-2x1.tsv
done

# calculate difference: 2x2-1x1-2x2
echo "DSSIM	File" > dssim-2x2-1x1-2x2.tsv
FILES="2x2-1x1-2x2/300/* 2x2-1x1-2x2/600/* 2x2-1x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x1-2x2.tsv
done

# calculate difference: 2x2-1x2-1x1
echo "DSSIM	File" > dssim-2x2-1x2-1x1.tsv
FILES="2x2-1x2-1x1/300/* 2x2-1x2-1x1/600/* 2x2-1x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x2-1x1.tsv
done

# calculate difference: 2x2-1x2-1x2
echo "DSSIM	File" > dssim-2x2-1x2-1x2.tsv
FILES="2x2-1x2-1x2/300/* 2x2-1x2-1x2/600/* 2x2-1x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x2-1x2.tsv
done

# calculate difference: 2x2-1x2-2x1
echo "DSSIM	File" > dssim-2x2-1x2-2x1.tsv
FILES="2x2-1x2-2x1/300/* 2x2-1x2-2x1/600/* 2x2-1x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x2-2x1.tsv
done

# calculate difference: 2x2-1x2-2x2
echo "DSSIM	File" > dssim-2x2-1x2-2x2.tsv
FILES="2x2-1x2-2x2/300/* 2x2-1x2-2x2/600/* 2x2-1x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-1x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-1x2-2x2.tsv
done

# calculate difference: 2x2-2x1-1x1
echo "DSSIM	File" > dssim-2x2-2x1-1x1.tsv
FILES="2x2-2x1-1x1/300/* 2x2-2x1-1x1/600/* 2x2-2x1-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x1-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x1-1x1.tsv
done

# calculate difference: 2x2-2x1-1x2
echo "DSSIM	File" > dssim-2x2-2x1-1x2.tsv
FILES="2x2-2x1-1x2/300/* 2x2-2x1-1x2/600/* 2x2-2x1-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x1-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x1-1x2.tsv
done

# calculate difference: 2x2-2x1-2x1
echo "DSSIM	File" > dssim-2x2-2x1-2x1.tsv
FILES="2x2-2x1-2x1/300/* 2x2-2x1-2x1/600/* 2x2-2x1-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x1-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x1-2x1.tsv
done

# calculate difference: 2x2-2x1-2x2
echo "DSSIM	File" > dssim-2x2-2x1-2x2.tsv
FILES="2x2-2x1-2x2/300/* 2x2-2x1-2x2/600/* 2x2-2x1-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x1-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x1-2x2.tsv
done

# calculate difference: 2x2-2x2-1x1
echo "DSSIM	File" > dssim-2x2-2x2-1x1.tsv
FILES="2x2-2x2-1x1/300/* 2x2-2x2-1x1/600/* 2x2-2x2-1x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x2-1x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x2-1x1.tsv
done

# calculate difference: 2x2-2x2-1x2
echo "DSSIM	File" > dssim-2x2-2x2-1x2.tsv
FILES="2x2-2x2-1x2/300/* 2x2-2x2-1x2/600/* 2x2-2x2-1x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x2-1x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x2-1x2.tsv
done

# calculate difference: 2x2-2x2-2x1
echo "DSSIM	File" > dssim-2x2-2x2-2x1.tsv
FILES="2x2-2x2-2x1/300/* 2x2-2x2-2x1/600/* 2x2-2x2-2x1/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x2-2x1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x2-2x1.tsv
done

# calculate difference: 2x2-2x2-2x2
echo "DSSIM	File" > dssim-2x2-2x2-2x2.tsv
FILES="2x2-2x2-2x2/300/* 2x2-2x2-2x2/600/* 2x2-2x2-2x2/1200/*"
for f in $FILES
do
	orig="${f/2x2-2x2-2x2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-2x2-2x2-2x2.tsv
done
