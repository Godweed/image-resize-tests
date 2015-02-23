#!/bin/bash

# setup dir/structure
rm -r 000 025 050 075 100 125 150 175 200
mkdir 000 025 050 075 100 125 150 175 200
mkdir 000/300 000/600 000/1200
mkdir 025/300 025/600 025/1200
mkdir 050/300 050/600 050/1200
mkdir 075/300 075/600 075/1200
mkdir 100/300 100/600 100/1200
mkdir 125/300 125/600 125/1200
mkdir 150/300 150/600 150/1200
mkdir 175/300 175/600 175/1200
mkdir 200/300 200/600 200/1200

rm -r 300 400 500 600 700 800 900 1000
mkdir 300 400 500 600 700 800 900 1000
mkdir 300/300 300/600 300/1200
mkdir 400/300 400/600 400/1200
mkdir 500/300 500/600 500/1200
mkdir 600/300 600/600 600/1200
mkdir 700/300 700/600 700/1200
mkdir 800/300 800/600 800/1200
mkdir 900/300 900/600 900/1200
mkdir 1000/300 1000/600 1000/1200

echo "# Test 11–12: unsharp gain" > conclusions.md

# resize
mogrify -path 000/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 000/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 000/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 000/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 000/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 000/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 025/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 025/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 025/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 025/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 025/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 025/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 050/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 050/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 050/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 050/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 050/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 050/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 075/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 075/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 075/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 075/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 075/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 075/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+0.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 100/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 100/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 100/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 125/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 125/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 125/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 125/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 125/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 125/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.25 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 150/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 150/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 150/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 150/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 150/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 150/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.50 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 175/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 175/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 175/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 175/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 175/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 175/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+1.75 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 200/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 200/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 200/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 200/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 200/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 200/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+2.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 300/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 300/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 300/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 300/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 300/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 300/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+3.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 400/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 400/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 400/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 400/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 400/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 400/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+4.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 500/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 500/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 500/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 500/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 500/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 500/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+5.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 600/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 600/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 600/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 600/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 600/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 600/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+6.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 700/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 700/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 700/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 700/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 700/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 700/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+7.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 800/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 800/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 800/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 800/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 800/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 800/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+8.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 900/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 900/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 900/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 900/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 900/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 900/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+9.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg

mogrify -path 1000/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 1000/300 -interpolate bicubic -distort Resize 300 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 1000/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 1000/600 -interpolate bicubic -distort Resize 600 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 1000/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 1000/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.25x0.25+10.00 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 0.0
echo "DSSIM	File" > dssim-000.tsv
FILES="000/300/*.png 000/600/*.png 000/1200/*.png 000/300/*.jpg 000/600/*.jpg 000/1200/*.jpg"
for f in $FILES
do
	orig="${f/000\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-000.tsv
done


# calculate difference: 0.25
echo "DSSIM	File" > dssim-025.tsv
FILES="025/300/*.png 025/600/*.png 025/1200/*.png 025/300/*.jpg 025/600/*.jpg 025/1200/*.jpg"
for f in $FILES
do
	orig="${f/025\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-025.tsv
done


# calculate difference: 0.5
echo "DSSIM	File" > dssim-050.tsv
FILES="050/300/*.png 050/600/*.png 050/1200/*.png 050/300/*.jpg 050/600/*.jpg 050/1200/*.jpg"
for f in $FILES
do
	orig="${f/050\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-050.tsv
done


# calculate difference: 0.75
echo "DSSIM	File" > dssim-075.tsv
FILES="075/300/*.png 075/600/*.png 075/1200/*.png 075/300/*.jpg 075/600/*.jpg 075/1200/*.jpg"
for f in $FILES
do
	orig="${f/075\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-075.tsv
done


# calculate difference: 1.0
echo "DSSIM	File" > dssim-100.tsv
FILES="100/300/*.png 100/600/*.png 100/1200/*.png 100/300/*.jpg 100/600/*.jpg 100/1200/*.jpg"
for f in $FILES
do
	orig="${f/100\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-100.tsv
done


# calculate difference: 1.25
echo "DSSIM	File" > dssim-125.tsv
FILES="125/300/*.png 125/600/*.png 125/1200/*.png 125/300/*.jpg 125/600/*.jpg 125/1200/*.jpg"
for f in $FILES
do
	orig="${f/125\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-125.tsv
done


# calculate difference: 1.5
echo "DSSIM	File" > dssim-150.tsv
FILES="150/300/*.png 150/600/*.png 150/1200/*.png 150/300/*.jpg 150/600/*.jpg 150/1200/*.jpg"
for f in $FILES
do
	orig="${f/150\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-150.tsv
done


# calculate difference: 1.75
echo "DSSIM	File" > dssim-175.tsv
FILES="175/300/*.png 175/600/*.png 175/1200/*.png 175/300/*.jpg 175/600/*.jpg 175/1200/*.jpg"
for f in $FILES
do
	orig="${f/175\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-175.tsv
done


# calculate difference: 2.0
echo "DSSIM	File" > dssim-200.tsv
FILES="200/300/*.png 200/600/*.png 200/1200/*.png 200/300/*.jpg 200/600/*.jpg 200/1200/*.jpg"
for f in $FILES
do
	orig="${f/200\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-200.tsv
done

# calculate difference: 3.0
echo "DSSIM	File" > dssim-300.tsv
FILES="300/300/*.png 300/600/*.png 300/1200/*.png 300/300/*.jpg 300/600/*.jpg 300/1200/*.jpg"
for f in $FILES
do
	orig="${f/300\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-300.tsv
done


# calculate difference: 4.0
echo "DSSIM	File" > dssim-400.tsv
FILES="400/300/*.png 400/600/*.png 400/1200/*.png 400/300/*.jpg 400/600/*.jpg 400/1200/*.jpg"
for f in $FILES
do
	orig="${f/400\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-400.tsv
done


# calculate difference: 5.0
echo "DSSIM	File" > dssim-500.tsv
FILES="500/300/*.png 500/600/*.png 500/1200/*.png 500/300/*.jpg 500/600/*.jpg 500/1200/*.jpg"
for f in $FILES
do
	orig="${f/500\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-500.tsv
done


# calculate difference: 6.0
echo "DSSIM	File" > dssim-600.tsv
FILES="600/300/*.png 600/600/*.png 600/1200/*.png 600/300/*.jpg 600/600/*.jpg 600/1200/*.jpg"
for f in $FILES
do
	orig="${f/600\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-600.tsv
done


# calculate difference: 7.0
echo "DSSIM	File" > dssim-700.tsv
FILES="700/300/*.png 700/600/*.png 700/1200/*.png 700/300/*.jpg 700/600/*.jpg 700/1200/*.jpg"
for f in $FILES
do
	orig="${f/700\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-700.tsv
done


# calculate difference: 8.0
echo "DSSIM	File" > dssim-800.tsv
FILES="800/300/*.png 800/600/*.png 800/1200/*.png 800/300/*.jpg 800600/*.jpg 800/1200/*.jpg"
for f in $FILES
do
	orig="${f/800\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-800.tsv
done


# calculate difference: 9.0
echo "DSSIM	File" > dssim-900.tsv
FILES="900/300/*.png 900/600/*.png 900/1200/*.png 900/300/*.jpg 900/600/*.jpg 900/1200/*.jpg"
for f in $FILES
do
	orig="${f/900\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-900.tsv
done


# calculate difference: 10.0
echo "DSSIM	File" > dssim-1000.tsv
FILES="1000/300/*.png 1000/600/*.png 1000/1200/*.png 1000/300/*.jpg 1000/600/*.jpg 1000/1200/*.jpg"
for f in $FILES
do
	orig="${f/1000\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-1000.tsv
done
