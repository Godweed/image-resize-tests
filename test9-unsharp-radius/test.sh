#!/bin/bash

# setup dir/structure
rm -r 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
mkdir 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
mkdir 00/300 00/600 00/1200
mkdir 01/300 01/600 01/1200
mkdir 02/300 02/600 02/1200
mkdir 03/300 03/600 03/1200
mkdir 04/300 04/600 04/1200
mkdir 05/300 05/600 05/1200
mkdir 06/300 06/600 06/1200
mkdir 07/300 07/600 07/1200
mkdir 08/300 08/600 08/1200
mkdir 09/300 09/600 09/1200
mkdir 10/300 10/600 10/1200
mkdir 11/300 11/600 11/1200
mkdir 12/300 12/600 12/1200
mkdir 13/300 13/600 13/1200
mkdir 14/300 14/600 14/1200
mkdir 15/300 15/600 15/1200
echo "# Test 9: unsharp radius" > conclusions.md

# resize
mogrify -path 00/300 -interpolate bicubic -distort Resize 300 -unsharp 0.0x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/300 -interpolate bicubic -distort Resize 300 -unsharp 0.0x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 00/600 -interpolate bicubic -distort Resize 600 -unsharp 0.0x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/600 -interpolate bicubic -distort Resize 600 -unsharp 0.0x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 00/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.0x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 00/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.0x0.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 01/300 -interpolate bicubic -distort Resize 300 -unsharp 0.1x0.1 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 01/300 -interpolate bicubic -distort Resize 300 -unsharp 0.1x0.1 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 01/600 -interpolate bicubic -distort Resize 600 -unsharp 0.1x0.1 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 01/600 -interpolate bicubic -distort Resize 600 -unsharp 0.1x0.1 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 01/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.1x0.1 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 01/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.1x0.1 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 02/300 -interpolate bicubic -distort Resize 300 -unsharp 0.2x0.2 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 02/300 -interpolate bicubic -distort Resize 300 -unsharp 0.2x0.2 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 02/600 -interpolate bicubic -distort Resize 600 -unsharp 0.2x0.2 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 02/600 -interpolate bicubic -distort Resize 600 -unsharp 0.2x0.2 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 02/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.2x0.2 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 02/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.2x0.2 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 03/300 -interpolate bicubic -distort Resize 300 -unsharp 0.3x0.3 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 03/300 -interpolate bicubic -distort Resize 300 -unsharp 0.3x0.3 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 03/600 -interpolate bicubic -distort Resize 600 -unsharp 0.3x0.3 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 03/600 -interpolate bicubic -distort Resize 600 -unsharp 0.3x0.3 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 03/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.3x0.3 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 03/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.3x0.3 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 04/300 -interpolate bicubic -distort Resize 300 -unsharp 0.4x0.4 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 04/300 -interpolate bicubic -distort Resize 300 -unsharp 0.4x0.4 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 04/600 -interpolate bicubic -distort Resize 600 -unsharp 0.4x0.4 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 04/600 -interpolate bicubic -distort Resize 600 -unsharp 0.4x0.4 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 04/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.4x0.4 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 04/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.4x0.4 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 05/300 -interpolate bicubic -distort Resize 300 -unsharp 0.5x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 05/300 -interpolate bicubic -distort Resize 300 -unsharp 0.5x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 05/600 -interpolate bicubic -distort Resize 600 -unsharp 0.5x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 05/600 -interpolate bicubic -distort Resize 600 -unsharp 0.5x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 05/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.5x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 05/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.5x0.5 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 06/300 -interpolate bicubic -distort Resize 300 -unsharp 0.6x0.6 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 06/300 -interpolate bicubic -distort Resize 300 -unsharp 0.6x0.6 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 06/600 -interpolate bicubic -distort Resize 600 -unsharp 0.6x0.6 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 06/600 -interpolate bicubic -distort Resize 600 -unsharp 0.6x0.6 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 06/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.6x0.6 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 06/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.6x0.6 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 07/300 -interpolate bicubic -distort Resize 300 -unsharp 0.7x0.7 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 07/300 -interpolate bicubic -distort Resize 300 -unsharp 0.7x0.7 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 07/600 -interpolate bicubic -distort Resize 600 -unsharp 0.7x0.7 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 07/600 -interpolate bicubic -distort Resize 600 -unsharp 0.7x0.7 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 07/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.7x0.7 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 07/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.7x0.7 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 08/300 -interpolate bicubic -distort Resize 300 -unsharp 0.8x0.8 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 08/300 -interpolate bicubic -distort Resize 300 -unsharp 0.8x0.8 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 08/600 -interpolate bicubic -distort Resize 600 -unsharp 0.8x0.8 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 08/600 -interpolate bicubic -distort Resize 600 -unsharp 0.8x0.8 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 08/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.8x0.8 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 08/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.8x0.8 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 09/300 -interpolate bicubic -distort Resize 300 -unsharp 0.9x0.9 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 09/300 -interpolate bicubic -distort Resize 300 -unsharp 0.9x0.9 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 09/600 -interpolate bicubic -distort Resize 600 -unsharp 0.9x0.9 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 09/600 -interpolate bicubic -distort Resize 600 -unsharp 0.9x0.9 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 09/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.9x0.9 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 09/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0.9x0.9 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 10/300 -interpolate bicubic -distort Resize 300 -unsharp 1.0x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 10/300 -interpolate bicubic -distort Resize 300 -unsharp 1.0x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 10/600 -interpolate bicubic -distort Resize 600 -unsharp 1.0x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 10/600 -interpolate bicubic -distort Resize 600 -unsharp 1.0x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 10/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.0x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 10/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.0x1.0 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 11/300 -interpolate bicubic -distort Resize 300 -unsharp 1.1x1.049 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 11/300 -interpolate bicubic -distort Resize 300 -unsharp 1.1x1.049 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 11/600 -interpolate bicubic -distort Resize 600 -unsharp 1.1x1.049 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 11/600 -interpolate bicubic -distort Resize 600 -unsharp 1.1x1.049 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 11/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.1x1.049 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 11/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.1x1.049 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 12/300 -interpolate bicubic -distort Resize 300 -unsharp 1.2x1.095 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 12/300 -interpolate bicubic -distort Resize 300 -unsharp 1.2x1.095 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 12/600 -interpolate bicubic -distort Resize 600 -unsharp 1.2x1.095 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 12/600 -interpolate bicubic -distort Resize 600 -unsharp 1.2x1.095 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 12/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.2x1.095 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 12/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.2x1.095 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 13/300 -interpolate bicubic -distort Resize 300 -unsharp 1.3x1.141 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 13/300 -interpolate bicubic -distort Resize 300 -unsharp 1.3x1.141 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 13/600 -interpolate bicubic -distort Resize 600 -unsharp 1.3x1.141 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 13/600 -interpolate bicubic -distort Resize 600 -unsharp 1.3x1.141 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 13/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.3x1.141 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 13/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.3x1.141 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 14/300 -interpolate bicubic -distort Resize 300 -unsharp 1.4x1.183 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 14/300 -interpolate bicubic -distort Resize 300 -unsharp 1.4x1.183 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 14/600 -interpolate bicubic -distort Resize 600 -unsharp 1.4x1.183 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 14/600 -interpolate bicubic -distort Resize 600 -unsharp 1.4x1.183 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 14/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.4x1.183 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 14/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.4x1.183 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 15/300 -interpolate bicubic -distort Resize 300 -unsharp 1.5x1.225 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 15/300 -interpolate bicubic -distort Resize 300 -unsharp 1.5x1.225 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 15/600 -interpolate bicubic -distort Resize 600 -unsharp 1.5x1.225 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 15/600 -interpolate bicubic -distort Resize 600 -unsharp 1.5x1.225 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 15/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.5x1.225 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.png
mogrify -path 15/1200 -interpolate bicubic -distort Resize 1200 -unsharp 1.5x1.225 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg


# optimize
imageoptim -d 00 -q
imageoptim -d 00 -q
imageoptim -d 00 -q

imageoptim -d 01 -q
imageoptim -d 01 -q
imageoptim -d 01 -q

imageoptim -d 02 -q
imageoptim -d 02 -q
imageoptim -d 02 -q

imageoptim -d 03 -q
imageoptim -d 03 -q
imageoptim -d 03 -q

imageoptim -d 04 -q
imageoptim -d 04 -q
imageoptim -d 04 -q

imageoptim -d 05 -q
imageoptim -d 05 -q
imageoptim -d 05 -q

imageoptim -d 06 -q
imageoptim -d 06 -q
imageoptim -d 06 -q

imageoptim -d 07 -q
imageoptim -d 07 -q
imageoptim -d 07 -q

imageoptim -d 08 -q
imageoptim -d 08 -q
imageoptim -d 08 -q

imageoptim -d 09 -q
imageoptim -d 09 -q
imageoptim -d 09 -q

imageoptim -d 10 -q
imageoptim -d 10 -q
imageoptim -d 10 -q

imageoptim -d 11 -q
imageoptim -d 11 -q
imageoptim -d 11 -q

imageoptim -d 12 -q
imageoptim -d 12 -q
imageoptim -d 12 -q

imageoptim -d 13 -q
imageoptim -d 13 -q
imageoptim -d 13 -q

imageoptim -d 14 -q
imageoptim -d 14 -q
imageoptim -d 14 -q

imageoptim -d 15 -q
imageoptim -d 15 -q
imageoptim -d 15 -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 0.0
echo "DSSIM	File" > dssim-00.tsv
FILES="00/300/*.png 00/600/*.png 00/1200/*.png 00/300/*.jpg 00/600/*.jpg 00/1200/*.jpg"
for f in $FILES
do
	orig="${f/00\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-00.tsv
done


# calculate difference: 0.1
echo "DSSIM	File" > dssim-01.tsv
FILES="01/300/*.png 01/600/*.png 01/1200/*.png 01/300/*.jpg 01/600/*.jpg 01/1200/*.jpg"
for f in $FILES
do
	orig="${f/01\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01.tsv
done


# calculate difference: 0.2
echo "DSSIM	File" > dssim-02.tsv
FILES="02/300/*.png 02/600/*.png 02/1200/*.png 02/300/*.jpg 02/600/*.jpg 02/1200/*.jpg"
for f in $FILES
do
	orig="${f/02\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-02.tsv
done


# calculate difference: 0.3
echo "DSSIM	File" > dssim-03.tsv
FILES="03/300/*.png 03/600/*.png 03/1200/*.png 03/300/*.jpg 03/600/*.jpg 03/1200/*.jpg"
for f in $FILES
do
	orig="${f/03\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-03.tsv
done


# calculate difference: 0.4
echo "DSSIM	File" > dssim-04.tsv
FILES="04/300/*.png 04/600/*.png 04/1200/*.png 04/300/*.jpg 04/600/*.jpg 04/1200/*.jpg"
for f in $FILES
do
	orig="${f/04\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-04.tsv
done


# calculate difference: 0.5
echo "DSSIM	File" > dssim-05.tsv
FILES="05/300/*.png 05/600/*.png 05/1200/*.png 05/300/*.jpg 05/600/*.jpg 05/1200/*.jpg"
for f in $FILES
do
	orig="${f/05\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-05.tsv
done


# calculate difference: 0.6
echo "DSSIM	File" > dssim-06.tsv
FILES="06/300/*.png 06/600/*.png 06/1200/*.png 06/300/*.jpg 06/600/*.jpg 06/1200/*.jpg"
for f in $FILES
do
	orig="${f/06\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-06.tsv
done


# calculate difference: 0.7
echo "DSSIM	File" > dssim-07.tsv
FILES="07/300/*.png 07/600/*.png 07/1200/*.png 07/300/*.jpg 07/600/*.jpg 07/1200/*.jpg"
for f in $FILES
do
	orig="${f/07\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-07.tsv
done


# calculate difference: 0.8
echo "DSSIM	File" > dssim-08.tsv
FILES="08/300/*.png 08/600/*.png 08/1200/*.png 08/300/*.jpg 08/600/*.jpg 08/1200/*.jpg"
for f in $FILES
do
	orig="${f/08\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-08.tsv
done


# calculate difference: 0.9
echo "DSSIM	File" > dssim-09.tsv
FILES="09/300/*.png 09/600/*.png 09/1200/*.png 09/300/*.jpg 09/600/*.jpg 09/1200/*.jpg"
for f in $FILES
do
	orig="${f/09\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-09.tsv
done


# calculate difference: 1.0
echo "DSSIM	File" > dssim-10.tsv
FILES="10/300/*.png 10/600/*.png 10/1200/*.png 10/300/*.jpg 10/600/*.jpg 10/1200/*.jpg"
for f in $FILES
do
	orig="${f/10\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10.tsv
done


# calculate difference: 1.1
echo "DSSIM	File" > dssim-11.tsv
FILES="11/300/*.png 11/600/*.png 11/1200/*.png 11/300/*.jpg 11/600/*.jpg 11/1200/*.jpg"
for f in $FILES
do
	orig="${f/11\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-11.tsv
done


# calculate difference: 1.2
echo "DSSIM	File" > dssim-12.tsv
FILES="12/300/*.png 12/600/*.png 12/1200/*.png 12/300/*.jpg 12/600/*.jpg 12/1200/*.jpg"
for f in $FILES
do
	orig="${f/12\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-12.tsv
done


# calculate difference: 1.3
echo "DSSIM	File" > dssim-13.tsv
FILES="13/300/*.png 13/600/*.png 13/1200/*.png 13/300/*.jpg 13/600/*.jpg 13/1200/*.jpg"
for f in $FILES
do
	orig="${f/13\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-13.tsv
done


# calculate difference: 1.4
echo "DSSIM	File" > dssim-14.tsv
FILES="14/300/*.png 14/600/*.png 14/1200/*.png 14/300/*.jpg 14/600/*.jpg 14/1200/*.jpg"
for f in $FILES
do
	orig="${f/14\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-14.tsv
done


# calculate difference: 1.5
echo "DSSIM	File" > dssim-15.tsv
FILES="15/300/*.png 15/600/*.png 15/1200/*.png 15/300/*.jpg 15/600/*.jpg 15/1200/*.jpg"
for f in $FILES
do
	orig="${f/15\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-15.tsv
done
