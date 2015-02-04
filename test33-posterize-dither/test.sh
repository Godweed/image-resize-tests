#!/bin/bash

# setup dir/structure
rm -r pre-30 pre-40 pre-50 pre-60 pre-70 pre-80 post-30 post-40 post-50 post-60 post-70 post-80 both-30 both-40 both-50 both-60 both-70 both-80 none
mkdir pre-30 pre-40 pre-50 pre-60 pre-70 pre-80 post-30 post-40 post-50 post-60 post-70 post-80 both-30 both-40 both-50 both-60 both-70 both-80 none
mkdir pre-30/300 pre-40/300 pre-50/300 pre-60/300 pre-70/300 pre-80/300 post-30/300 post-40/300 post-50/300 post-60/300 post-70/300 post-80/300 both-30/300 both-40/300 both-50/300 both-60/300 both-70/300 both-80/300 none/300
mkdir pre-30/600 pre-40/600 pre-50/600 pre-60/600 pre-70/600 pre-80/600 post-30/600 post-40/600 post-50/600 post-60/600 post-70/600 post-80/600 both-30/600 both-40/600 both-50/600 both-60/600 both-70/600 both-80/600 none/600
mkdir pre-30/1200 pre-40/1200 pre-50/1200 pre-60/1200 pre-70/1200 pre-80/1200 post-30/1200 post-40/1200 post-50/1200 post-60/1200 post-70/1200 post-80/1200 both-30/1200 both-40/1200 both-50/1200 both-60/1200 both-70/1200 both-80/1200 none/1200

echo "# Test 33: posterize + dither" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path pre-30/300 -filter Triangle +dither -posterize 30 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-30/300 -filter Triangle +dither -posterize 30 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-30/600 -filter Triangle +dither -posterize 30 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-30/600 -filter Triangle +dither -posterize 30 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-30/1200 -filter Triangle +dither -posterize 30 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-30/1200 -filter Triangle +dither -posterize 30 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path pre-40/300 -filter Triangle +dither -posterize 40 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-40/300 -filter Triangle +dither -posterize 40 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-40/600 -filter Triangle +dither -posterize 40 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-40/600 -filter Triangle +dither -posterize 40 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-40/1200 -filter Triangle +dither -posterize 40 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-40/1200 -filter Triangle +dither -posterize 40 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path pre-50/300 -filter Triangle +dither -posterize 50 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-50/300 -filter Triangle +dither -posterize 50 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-50/600 -filter Triangle +dither -posterize 50 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-50/600 -filter Triangle +dither -posterize 50 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-50/1200 -filter Triangle +dither -posterize 50 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-50/1200 -filter Triangle +dither -posterize 50 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path pre-60/300 -filter Triangle +dither -posterize 60 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-60/300 -filter Triangle +dither -posterize 60 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-60/600 -filter Triangle +dither -posterize 60 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-60/600 -filter Triangle +dither -posterize 60 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-60/1200 -filter Triangle +dither -posterize 60 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-60/1200 -filter Triangle +dither -posterize 60 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path pre-70/300 -filter Triangle +dither -posterize 70 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-70/300 -filter Triangle +dither -posterize 70 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-70/600 -filter Triangle +dither -posterize 70 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-70/600 -filter Triangle +dither -posterize 70 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-70/1200 -filter Triangle +dither -posterize 70 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-70/1200 -filter Triangle +dither -posterize 70 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path pre-80/300 -filter Triangle +dither -posterize 80 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-80/300 -filter Triangle +dither -posterize 80 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-80/600 -filter Triangle +dither -posterize 80 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-80/600 -filter Triangle +dither -posterize 80 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path pre-80/1200 -filter Triangle +dither -posterize 80 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path pre-80/1200 -filter Triangle +dither -posterize 80 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-30/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-30/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-30/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-30/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-30/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-30/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-40/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-40/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-40/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-40/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-40/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-40/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-50/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-50/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-50/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-50/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-50/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-50/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-60/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-60/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-60/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-60/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-60/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-60/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-70/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-70/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-70/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-70/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-70/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-70/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path post-80/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-80/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-80/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-80/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path post-80/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path post-80/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path both-30/300 -filter Triangle +dither -posterize 30 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-30/300 -filter Triangle +dither -posterize 30 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-30/600 -filter Triangle +dither -posterize 30 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-30/600 -filter Triangle +dither -posterize 30 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-30/1200 -filter Triangle +dither -posterize 30 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-30/1200 -filter Triangle +dither -posterize 30 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 30 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path both-40/300 -filter Triangle +dither -posterize 40 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-40/300 -filter Triangle +dither -posterize 40 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-40/600 -filter Triangle +dither -posterize 40 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-40/600 -filter Triangle +dither -posterize 40 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-40/1200 -filter Triangle +dither -posterize 40 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-40/1200 -filter Triangle +dither -posterize 40 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 40 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path both-50/300 -filter Triangle +dither -posterize 50 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-50/300 -filter Triangle +dither -posterize 50 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-50/600 -filter Triangle +dither -posterize 50 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-50/600 -filter Triangle +dither -posterize 50 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-50/1200 -filter Triangle +dither -posterize 50 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-50/1200 -filter Triangle +dither -posterize 50 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 50 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path both-60/300 -filter Triangle +dither -posterize 60 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-60/300 -filter Triangle +dither -posterize 60 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-60/600 -filter Triangle +dither -posterize 60 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-60/600 -filter Triangle +dither -posterize 60 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-60/1200 -filter Triangle +dither -posterize 60 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-60/1200 -filter Triangle +dither -posterize 60 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 60 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path both-70/300 -filter Triangle +dither -posterize 70 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-70/300 -filter Triangle +dither -posterize 70 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-70/600 -filter Triangle +dither -posterize 70 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-70/600 -filter Triangle +dither -posterize 70 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-70/1200 -filter Triangle +dither -posterize 70 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-70/1200 -filter Triangle +dither -posterize 70 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 70 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path both-80/300 -filter Triangle +dither -posterize 80 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-80/300 -filter Triangle +dither -posterize 80 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-80/600 -filter Triangle +dither -posterize 80 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-80/600 -filter Triangle +dither -posterize 80 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path both-80/1200 -filter Triangle +dither -posterize 80 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path both-80/1200 -filter Triangle +dither -posterize 80 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 +dither -posterize 80 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d pre-30 -q
imageoptim -d pre-30 -q
imageoptim -d pre-30 -q

imageoptim -d pre-40 -q
imageoptim -d pre-40 -q
imageoptim -d pre-40 -q

imageoptim -d pre-50 -q
imageoptim -d pre-50 -q
imageoptim -d pre-50 -q

imageoptim -d pre-60 -q
imageoptim -d pre-60 -q
imageoptim -d pre-60 -q

imageoptim -d pre-70 -q
imageoptim -d pre-70 -q
imageoptim -d pre-70 -q

imageoptim -d pre-80 -q
imageoptim -d pre-80 -q
imageoptim -d pre-80 -q

imageoptim -d post-30 -q
imageoptim -d post-30 -q
imageoptim -d post-30 -q

imageoptim -d post-40 -q
imageoptim -d post-40 -q
imageoptim -d post-40 -q

imageoptim -d post-50 -q
imageoptim -d post-50 -q
imageoptim -d post-50 -q

imageoptim -d post-60 -q
imageoptim -d post-60 -q
imageoptim -d post-60 -q

imageoptim -d post-70 -q
imageoptim -d post-70 -q
imageoptim -d post-70 -q

imageoptim -d post-80 -q
imageoptim -d post-80 -q
imageoptim -d post-80 -q

imageoptim -d both-30 -q
imageoptim -d both-30 -q
imageoptim -d both-30 -q

imageoptim -d both-40 -q
imageoptim -d both-40 -q
imageoptim -d both-40 -q

imageoptim -d both-50 -q
imageoptim -d both-50 -q
imageoptim -d both-50 -q

imageoptim -d both-60 -q
imageoptim -d both-60 -q
imageoptim -d both-60 -q

imageoptim -d both-70 -q
imageoptim -d both-70 -q
imageoptim -d both-70 -q

imageoptim -d both-80 -q
imageoptim -d both-80 -q
imageoptim -d both-80 -q

imageoptim -d none -q
imageoptim -d none -q
imageoptim -d none -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: pre-30
echo "DSSIM	File" > dssim-pre-30.tsv
FILES="pre-30/300/* pre-30/600/* pre-30/1200/*"
for f in $FILES
do
	orig="${f/pre-30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-pre-30.tsv
done

# calculate difference: pre-40
echo "DSSIM	File" > dssim-pre-40.tsv
FILES="pre-40/300/* pre-40/600/* pre-40/1200/*"
for f in $FILES
do
	orig="${f/pre-40\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-pre-40.tsv
done

# calculate difference: pre-50
echo "DSSIM	File" > dssim-pre-50.tsv
FILES="pre-50/300/* pre-50/600/* pre-50/1200/*"
for f in $FILES
do
	orig="${f/pre-50\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-pre-50.tsv
done

# calculate difference: pre-60
echo "DSSIM	File" > dssim-pre-60.tsv
FILES="pre-60/300/* pre-60/600/* pre-60/1200/*"
for f in $FILES
do
	orig="${f/pre-60\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-pre-60.tsv
done

# calculate difference: pre-70
echo "DSSIM	File" > dssim-pre-70.tsv
FILES="pre-70/300/* pre-70/600/* pre-70/1200/*"
for f in $FILES
do
	orig="${f/pre-70\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-pre-70.tsv
done

# calculate difference: pre-80
echo "DSSIM	File" > dssim-pre-80.tsv
FILES="pre-80/300/* pre-80/600/* pre-80/1200/*"
for f in $FILES
do
	orig="${f/pre-80\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-pre-80.tsv
done

# calculate difference: post-30
echo "DSSIM	File" > dssim-post-30.tsv
FILES="post-30/300/* post-30/600/* post-30/1200/*"
for f in $FILES
do
	orig="${f/post-30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-30.tsv
done

# calculate difference: post-40
echo "DSSIM	File" > dssim-post-40.tsv
FILES="post-40/300/* post-40/600/* post-40/1200/*"
for f in $FILES
do
	orig="${f/post-40\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-40.tsv
done

# calculate difference: post-50
echo "DSSIM	File" > dssim-post-50.tsv
FILES="post-50/300/* post-50/600/* post-50/1200/*"
for f in $FILES
do
	orig="${f/post-50\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-50.tsv
done

# calculate difference: post-60
echo "DSSIM	File" > dssim-post-60.tsv
FILES="post-60/300/* post-60/600/* post-60/1200/*"
for f in $FILES
do
	orig="${f/post-60\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-60.tsv
done

# calculate difference: post-70
echo "DSSIM	File" > dssim-post-70.tsv
FILES="post-70/300/* post-70/600/* post-70/1200/*"
for f in $FILES
do
	orig="${f/post-70\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-70.tsv
done

# calculate difference: post-80
echo "DSSIM	File" > dssim-post-80.tsv
FILES="post-80/300/* post-80/600/* post-80/1200/*"
for f in $FILES
do
	orig="${f/post-80\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-post-80.tsv
done

# calculate difference: both-30
echo "DSSIM	File" > dssim-both-30.tsv
FILES="both-30/300/* both-30/600/* both-30/1200/*"
for f in $FILES
do
	orig="${f/both-30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both-30.tsv
done

# calculate difference: both-40
echo "DSSIM	File" > dssim-both-40.tsv
FILES="both-40/300/* both-40/600/* both-40/1200/*"
for f in $FILES
do
	orig="${f/both-40\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both-40.tsv
done

# calculate difference: both-50
echo "DSSIM	File" > dssim-both-50.tsv
FILES="both-50/300/* both-50/600/* both-50/1200/*"
for f in $FILES
do
	orig="${f/both-50\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both-50.tsv
done

# calculate difference: both-60
echo "DSSIM	File" > dssim-both-60.tsv
FILES="both-60/300/* both-60/600/* both-60/1200/*"
for f in $FILES
do
	orig="${f/both-60\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both-60.tsv
done

# calculate difference: both-70
echo "DSSIM	File" > dssim-both-70.tsv
FILES="both-70/300/* both-70/600/* both-70/1200/*"
for f in $FILES
do
	orig="${f/both-70\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both-70.tsv
done

# calculate difference: both-80
echo "DSSIM	File" > dssim-both-80.tsv
FILES="both-80/300/* both-80/600/* both-80/1200/*"
for f in $FILES
do
	orig="${f/both-80\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-both-80.tsv
done

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
