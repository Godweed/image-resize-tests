#!/bin/bash

# setup dir/structure
rm -r lab-none lab-rgb lab-srgb luv-none luv-rgb luv-srgb none-none none-rgb none-srgb rgb-none rgb-rgb rgb-srgb srgb-none srgb-rgb srgb-srgb
mkdir lab-none lab-rgb lab-srgb luv-none luv-rgb luv-srgb none-none none-rgb none-srgb rgb-none rgb-rgb rgb-srgb srgb-none srgb-rgb srgb-srgb
mkdir lab-none/300 lab-rgb/300 lab-srgb/300 luv-none/300 luv-rgb/300 luv-srgb/300 none-none/300 none-rgb/300 none-srgb/300 rgb-none/300 rgb-rgb/300 rgb-srgb/300 srgb-none/300 srgb-rgb/300 srgb-srgb/300
mkdir lab-none/600 lab-rgb/600 lab-srgb/600 luv-none/600 luv-rgb/600 luv-srgb/600 none-none/600 none-rgb/600 none-srgb/600 rgb-none/600 rgb-rgb/600 rgb-srgb/600 srgb-none/600 srgb-rgb/600 srgb-srgb/600
mkdir lab-none/1200 lab-rgb/1200 lab-srgb/1200 luv-none/1200 luv-rgb/1200 luv-srgb/1200 none-none/1200 none-rgb/1200 none-srgb/1200 rgb-none/1200 rgb-rgb/1200 rgb-srgb/1200 srgb-none/1200 srgb-rgb/1200 srgb-srgb/1200

echo "# Test 18: colorspace" > conclusions.md

# resize
mogrify -path lab-none/300 -interpolate Background -colorspace LAB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path lab-none/300 -interpolate Background -colorspace LAB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path lab-none/600 -interpolate Background -colorspace LAB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path lab-none/600 -interpolate Background -colorspace LAB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path lab-none/1200 -interpolate Background -colorspace LAB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path lab-none/1200 -interpolate Background -colorspace LAB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png

mogrify -path lab-rgb/300 -interpolate Background -colorspace LAB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path lab-rgb/300 -interpolate Background -colorspace LAB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path lab-rgb/600 -interpolate Background -colorspace LAB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path lab-rgb/600 -interpolate Background -colorspace LAB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path lab-rgb/1200 -interpolate Background -colorspace LAB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path lab-rgb/1200 -interpolate Background -colorspace LAB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png

mogrify -path lab-srgb/300 -interpolate Background -colorspace LAB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path lab-srgb/300 -interpolate Background -colorspace LAB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path lab-srgb/600 -interpolate Background -colorspace LAB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path lab-srgb/600 -interpolate Background -colorspace LAB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path lab-srgb/1200 -interpolate Background -colorspace LAB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path lab-srgb/1200 -interpolate Background -colorspace LAB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path luv-none/300 -interpolate Background -colorspace LUV -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path luv-none/300 -interpolate Background -colorspace LUV -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path luv-none/600 -interpolate Background -colorspace LUV -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path luv-none/600 -interpolate Background -colorspace LUV -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path luv-none/1200 -interpolate Background -colorspace LUV -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path luv-none/1200 -interpolate Background -colorspace LUV -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png

mogrify -path luv-rgb/300 -interpolate Background -colorspace LUV -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path luv-rgb/300 -interpolate Background -colorspace LUV -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path luv-rgb/600 -interpolate Background -colorspace LUV -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path luv-rgb/600 -interpolate Background -colorspace LUV -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path luv-rgb/1200 -interpolate Background -colorspace LUV -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path luv-rgb/1200 -interpolate Background -colorspace LUV -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png

mogrify -path luv-srgb/300 -interpolate Background -colorspace LUV -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path luv-srgb/300 -interpolate Background -colorspace LUV -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path luv-srgb/600 -interpolate Background -colorspace LUV -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path luv-srgb/600 -interpolate Background -colorspace LUV -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path luv-srgb/1200 -interpolate Background -colorspace LUV -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path luv-srgb/1200 -interpolate Background -colorspace LUV -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path none-none/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path none-none/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path none-none/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path none-none/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path none-none/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path none-none/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png

mogrify -path none-rgb/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path none-rgb/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path none-rgb/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path none-rgb/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path none-rgb/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path none-rgb/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png

mogrify -path none-srgb/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none-srgb/300 -interpolate Background -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none-srgb/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none-srgb/600 -interpolate Background -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none-srgb/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none-srgb/1200 -interpolate Background -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path rgb-none/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-none/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path rgb-none/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-none/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path rgb-none/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-none/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png

mogrify -path rgb-rgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-rgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path rgb-rgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-rgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path rgb-rgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-rgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png

mogrify -path rgb-srgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-srgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path rgb-srgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-srgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path rgb-srgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path rgb-srgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path srgb-none/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-none/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path srgb-none/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-none/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png
mogrify -path srgb-none/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-none/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -strip ../assets-unoptimized/*.png

mogrify -path srgb-rgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-rgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path srgb-rgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-rgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png
mogrify -path srgb-rgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-rgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace RGB -strip ../assets-unoptimized/*.png

mogrify -path srgb-srgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-srgb/300 -interpolate Background -colorspace sRGB -distort Resize 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path srgb-srgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-srgb/600 -interpolate Background -colorspace sRGB -distort Resize 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path srgb-srgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path srgb-srgb/1200 -interpolate Background -colorspace sRGB -distort Resize 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: lab-none
echo "DSSIM	File" > dssim-lab-none.tsv
FILES="lab-none/300/* lab-none/600/* lab-none/1200/*"
for f in $FILES
do
	orig="${f/lab-none\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-lab-none.tsv
done

# calculate difference: lab-rgb
echo "DSSIM	File" > dssim-lab-rgb.tsv
FILES="lab-rgb/300/* lab-rgb/600/* lab-rgb/1200/*"
for f in $FILES
do
	orig="${f/lab-rgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-lab-rgb.tsv
done

# calculate difference: lab-srgb
echo "DSSIM	File" > dssim-lab-srgb.tsv
FILES="lab-srgb/300/* lab-srgb/600/* lab-srgb/1200/*"
for f in $FILES
do
	orig="${f/lab-srgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-lab-srgb.tsv
done

# calculate difference: luv-none
echo "DSSIM	File" > dssim-luv-none.tsv
FILES="luv-none/300/* luv-none/600/* luv-none/1200/*"
for f in $FILES
do
	orig="${f/luv-none\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-luv-none.tsv
done

# calculate difference: luv-rgb
echo "DSSIM	File" > dssim-luv-rgb.tsv
FILES="luv-rgb/300/* luv-rgb/600/* luv-rgb/1200/*"
for f in $FILES
do
	orig="${f/luv-rgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-luv-rgb.tsv
done

# calculate difference: luv-srgb
echo "DSSIM	File" > dssim-luv-srgb.tsv
FILES="luv-srgb/300/* luv-srgb/600/* luv-srgb/1200/*"
for f in $FILES
do
	orig="${f/luv-srgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-luv-srgb.tsv
done

# calculate difference: none-none
echo "DSSIM	File" > dssim-none-none.tsv
FILES="none-none/300/* none-none/600/* none-none/1200/*"
for f in $FILES
do
	orig="${f/none-none\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-none-none.tsv
done

# calculate difference: none-rgb
echo "DSSIM	File" > dssim-none-rgb.tsv
FILES="none-rgb/300/* none-rgb/600/* none-rgb/1200/*"
for f in $FILES
do
	orig="${f/none-rgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-none-rgb.tsv
done

# calculate difference: none-srgb
echo "DSSIM	File" > dssim-none-srgb.tsv
FILES="none-srgb/300/* none-srgb/600/* none-srgb/1200/*"
for f in $FILES
do
	orig="${f/none-srgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-none-srgb.tsv
done

# calculate difference: rgb-none
echo "DSSIM	File" > dssim-rgb-none.tsv
FILES="rgb-none/300/* rgb-none/600/* rgb-none/1200/*"
for f in $FILES
do
	orig="${f/rgb-none\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-rgb-none.tsv
done

# calculate difference: rgb-rgb
echo "DSSIM	File" > dssim-rgb-rgb.tsv
FILES="rgb-rgb/300/* rgb-rgb/600/* rgb-rgb/1200/*"
for f in $FILES
do
	orig="${f/rgb-rgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-rgb-rgb.tsv
done

# calculate difference: rgb-srgb
echo "DSSIM	File" > dssim-rgb-srgb.tsv
FILES="rgb-srgb/300/* rgb-srgb/600/* rgb-srgb/1200/*"
for f in $FILES
do
	orig="${f/rgb-srgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-rgb-srgb.tsv
done

# calculate difference: srgb-none
echo "DSSIM	File" > dssim-srgb-none.tsv
FILES="srgb-none/300/* srgb-none/600/* srgb-none/1200/*"
for f in $FILES
do
	orig="${f/srgb-none\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-srgb-none.tsv
done

# calculate difference: srgb-rgb
echo "DSSIM	File" > dssim-srgb-rgb.tsv
FILES="srgb-rgb/300/* srgb-rgb/600/* srgb-rgb/1200/*"
for f in $FILES
do
	orig="${f/srgb-rgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-srgb-rgb.tsv
done

# calculate difference: srgb-srgb
echo "DSSIM	File" > dssim-srgb-srgb.tsv
FILES="srgb-srgb/300/* srgb-srgb/600/* srgb-srgb/1200/*"
for f in $FILES
do
	orig="${f/srgb-srgb\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-srgb-srgb.tsv
done
