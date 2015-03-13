#!/bin/bash

# setup dir/structure
rm -r default-mogrify 01-mogrify 02-mogrify 03-mogrify 04-mogrify 05-mogrify 06-mogrify 07-mogrify 08-mogrify 09-mogrify 10-mogrify 11-mogrify 12-mogrify default-convert 01-convert 02-convert 03-convert 04-convert 05-convert 06-convert 07-convert 08-convert 09-convert 10-convert 11-convert 12-convert
mkdir default-mogrify 01-mogrify 02-mogrify 03-mogrify 04-mogrify 05-mogrify 06-mogrify 07-mogrify 08-mogrify 09-mogrify 10-mogrify 11-mogrify 12-mogrify default-convert 01-convert 02-convert 03-convert 04-convert 05-convert 06-convert 07-convert 08-convert 09-convert 10-convert 11-convert 12-convert
mkdir default-mogrify/300 01-mogrify/300 02-mogrify/300 03-mogrify/300 04-mogrify/300 05-mogrify/300 06-mogrify/300 07-mogrify/300 08-mogrify/300 09-mogrify/300 10-mogrify/300 11-mogrify/300 12-mogrify/300 default-convert/300 01-convert/300 02-convert/300 03-convert/300 04-convert/300 05-convert/300 06-convert/300 07-convert/300 08-convert/300 09-convert/300 10-convert/300 11-convert/300 12-convert/300
mkdir default-mogrify/600 01-mogrify/600 02-mogrify/600 03-mogrify/600 04-mogrify/600 05-mogrify/600 06-mogrify/600 07-mogrify/600 08-mogrify/600 09-mogrify/600 10-mogrify/600 11-mogrify/600 12-mogrify/600 default-convert/600 01-convert/600 02-convert/600 03-convert/600 04-convert/600 05-convert/600 06-convert/600 07-convert/600 08-convert/600 09-convert/600 10-convert/600 11-convert/600 12-convert/600
mkdir default-mogrify/1200 01-mogrify/1200 02-mogrify/1200 03-mogrify/1200 04-mogrify/1200 05-mogrify/1200 06-mogrify/1200 07-mogrify/1200 08-mogrify/1200 09-mogrify/1200 10-mogrify/1200 11-mogrify/1200 12-mogrify/1200 default-convert/1200 01-convert/1200 02-convert/1200 03-convert/1200 04-convert/1200 05-convert/1200 06-convert/1200 07-convert/1200 08-convert/1200 09-convert/1200 10-convert/1200 11-convert/1200 12-convert/1200

echo "# Test 70: mogrify convert" > conclusions.md

# resize
mogrify -path default-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 01-mogrify/300 -thumbnail 300 ../assets-unoptimized/*.jpg
mogrify -path 01-mogrify/300 -thumbnail 300 ../assets-unoptimized/*.png
mogrify -path 01-mogrify/600 -thumbnail 600 ../assets-unoptimized/*.jpg
mogrify -path 01-mogrify/600 -thumbnail 600 ../assets-unoptimized/*.png
mogrify -path 01-mogrify/1200 -thumbnail 1200 ../assets-unoptimized/*.jpg
mogrify -path 01-mogrify/1200 -thumbnail 1200 ../assets-unoptimized/*.png

mogrify -path 02-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 ../assets-unoptimized/*.jpg
mogrify -path 02-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 ../assets-unoptimized/*.png
mogrify -path 02-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 ../assets-unoptimized/*.jpg
mogrify -path 02-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 ../assets-unoptimized/*.png
mogrify -path 02-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 ../assets-unoptimized/*.jpg
mogrify -path 02-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 ../assets-unoptimized/*.png

mogrify -path 03-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 ../assets-unoptimized/*.jpg
mogrify -path 03-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 ../assets-unoptimized/*.png
mogrify -path 03-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 ../assets-unoptimized/*.jpg
mogrify -path 03-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 ../assets-unoptimized/*.png
mogrify -path 03-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 ../assets-unoptimized/*.jpg
mogrify -path 03-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 ../assets-unoptimized/*.png

mogrify -path 04-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 ../assets-unoptimized/*.jpg
mogrify -path 04-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 ../assets-unoptimized/*.png
mogrify -path 04-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 ../assets-unoptimized/*.jpg
mogrify -path 04-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 ../assets-unoptimized/*.png
mogrify -path 04-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 ../assets-unoptimized/*.jpg
mogrify -path 04-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 ../assets-unoptimized/*.png

mogrify -path 05-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background ../assets-unoptimized/*.jpg
mogrify -path 05-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background ../assets-unoptimized/*.png
mogrify -path 05-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background ../assets-unoptimized/*.jpg
mogrify -path 05-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background ../assets-unoptimized/*.png
mogrify -path 05-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background ../assets-unoptimized/*.jpg
mogrify -path 05-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background ../assets-unoptimized/*.png

mogrify -path 06-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 ../assets-unoptimized/*.jpg
mogrify -path 06-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 ../assets-unoptimized/*.png
mogrify -path 06-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 ../assets-unoptimized/*.jpg
mogrify -path 06-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 ../assets-unoptimized/*.png
mogrify -path 06-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 ../assets-unoptimized/*.jpg
mogrify -path 06-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 ../assets-unoptimized/*.png

mogrify -path 07-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off ../assets-unoptimized/*.jpg
mogrify -path 07-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off ../assets-unoptimized/*.png
mogrify -path 07-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off ../assets-unoptimized/*.jpg
mogrify -path 07-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off ../assets-unoptimized/*.png
mogrify -path 07-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off ../assets-unoptimized/*.jpg
mogrify -path 07-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off ../assets-unoptimized/*.png

mogrify -path 08-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 ../assets-unoptimized/*.jpg
mogrify -path 08-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 ../assets-unoptimized/*.png
mogrify -path 08-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 ../assets-unoptimized/*.jpg
mogrify -path 08-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 ../assets-unoptimized/*.png
mogrify -path 08-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 ../assets-unoptimized/*.jpg
mogrify -path 08-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 ../assets-unoptimized/*.png

mogrify -path 09-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all ../assets-unoptimized/*.jpg
mogrify -path 09-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all ../assets-unoptimized/*.png
mogrify -path 09-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all ../assets-unoptimized/*.jpg
mogrify -path 09-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all ../assets-unoptimized/*.png
mogrify -path 09-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all ../assets-unoptimized/*.jpg
mogrify -path 09-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all ../assets-unoptimized/*.png

mogrify -path 10-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none ../assets-unoptimized/*.jpg
mogrify -path 10-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none ../assets-unoptimized/*.png
mogrify -path 10-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none ../assets-unoptimized/*.jpg
mogrify -path 10-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none ../assets-unoptimized/*.png
mogrify -path 10-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none ../assets-unoptimized/*.jpg
mogrify -path 10-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none ../assets-unoptimized/*.png

mogrify -path 11-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path 11-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path 11-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path 11-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png
mogrify -path 11-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.jpg
mogrify -path 11-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB ../assets-unoptimized/*.png

mogrify -path 12-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 12-mogrify/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 12-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 12-mogrify/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 12-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 12-mogrify/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip default-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip default-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip default-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -thumbnail 300 01-convert/300/$fn
	convert $f -thumbnail 600 01-convert/600/$fn
	convert $f -thumbnail 1200 01-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 02-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 02-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 02-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 03-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 03-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 03-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 04-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 04-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 04-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background 05-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background 05-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background 05-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 06-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 06-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 06-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off 07-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off 07-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off 07-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 08-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 08-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 08-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all 09-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all 09-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all 09-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none 10-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none 10-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none 10-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 11-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 11-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB 11-convert/1200/$fn
done

FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"

	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip 12-convert/300/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip 12-convert/600/$fn
	convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip 12-convert/1200/$fn
done


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default-mogrify
echo "DSSIM	File" > dssim-default-mogrify.tsv
FILES="default-mogrify/300/*.png default-mogrify/600/*.png default-mogrify/1200/*.png default-mogrify/300/*.jpg default-mogrify/600/*.jpg default-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/default-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default-mogrify.tsv
done


# calculate difference: 01-mogrify
echo "DSSIM	File" > dssim-01-mogrify.tsv
FILES="01-mogrify/300/*.png 01-mogrify/600/*.png 01-mogrify/1200/*.png 01-mogrify/300/*.jpg 01-mogrify/600/*.jpg 01-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/01-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01-mogrify.tsv
done


# calculate difference: 02-mogrify
echo "DSSIM	File" > dssim-02-mogrify.tsv
FILES="02-mogrify/300/*.png 02-mogrify/600/*.png 02-mogrify/1200/*.png 02-mogrify/300/*.jpg 02-mogrify/600/*.jpg 02-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/02-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-02-mogrify.tsv
done


# calculate difference: 03-mogrify
echo "DSSIM	File" > dssim-03-mogrify.tsv
FILES="03-mogrify/300/*.png 03-mogrify/600/*.png 03-mogrify/1200/*.png 03-mogrify/300/*.jpg 03-mogrify/600/*.jpg 03-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/03-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-03-mogrify.tsv
done


# calculate difference: 04-mogrify
echo "DSSIM	File" > dssim-04-mogrify.tsv
FILES="04-mogrify/300/*.png 04-mogrify/600/*.png 04-mogrify/1200/*.png 04-mogrify/300/*.jpg 04-mogrify/600/*.jpg 04-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/04-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-04-mogrify.tsv
done


# calculate difference: 05-mogrify
echo "DSSIM	File" > dssim-05-mogrify.tsv
FILES="05-mogrify/300/*.png 05-mogrify/600/*.png 05-mogrify/1200/*.png 05-mogrify/300/*.jpg 05-mogrify/600/*.jpg 05-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/05-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-05-mogrify.tsv
done


# calculate difference: 06-mogrify
echo "DSSIM	File" > dssim-06-mogrify.tsv
FILES="06-mogrify/300/*.png 06-mogrify/600/*.png 06-mogrify/1200/*.png 06-mogrify/300/*.jpg 06-mogrify/600/*.jpg 06-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/06-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-06-mogrify.tsv
done


# calculate difference: 07-mogrify
echo "DSSIM	File" > dssim-07-mogrify.tsv
FILES="07-mogrify/300/*.png 07-mogrify/600/*.png 07-mogrify/1200/*.png 07-mogrify/300/*.jpg 07-mogrify/600/*.jpg 07-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/07-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-07-mogrify.tsv
done


# calculate difference: 08-mogrify
echo "DSSIM	File" > dssim-08-mogrify.tsv
FILES="08-mogrify/300/*.png 08-mogrify/600/*.png 08-mogrify/1200/*.png 08-mogrify/300/*.jpg 08-mogrify/600/*.jpg 08-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/08-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-08-mogrify.tsv
done


# calculate difference: 09-mogrify
echo "DSSIM	File" > dssim-09-mogrify.tsv
FILES="09-mogrify/300/*.png 09-mogrify/600/*.png 09-mogrify/1200/*.png 09-mogrify/300/*.jpg 09-mogrify/600/*.jpg 09-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/09-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-09-mogrify.tsv
done


# calculate difference: 10-mogrify
echo "DSSIM	File" > dssim-10-mogrify.tsv
FILES="10-mogrify/300/*.png 10-mogrify/600/*.png 10-mogrify/1200/*.png 10-mogrify/300/*.jpg 10-mogrify/600/*.jpg 10-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/10-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10-mogrify.tsv
done


# calculate difference: 11-mogrify
echo "DSSIM	File" > dssim-11-mogrify.tsv
FILES="11-mogrify/300/*.png 11-mogrify/600/*.png 11-mogrify/1200/*.png 11-mogrify/300/*.jpg 11-mogrify/600/*.jpg 11-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/11-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-11-mogrify.tsv
done


# calculate difference: 12-mogrify
echo "DSSIM	File" > dssim-12-mogrify.tsv
FILES="12-mogrify/300/*.png 12-mogrify/600/*.png 12-mogrify/1200/*.png 12-mogrify/300/*.jpg 12-mogrify/600/*.jpg 12-mogrify/1200/*.jpg"
for f in $FILES
do
	orig="${f/12-mogrify\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-12-mogrify.tsv
done


# calculate difference: default-convert
echo "DSSIM	File" > dssim-default-convert.tsv
FILES="default-convert/300/*.png default-convert/600/*.png default-convert/1200/*.png default-convert/300/*.jpg default-convert/600/*.jpg default-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/default-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-default-convert.tsv
done


# calculate difference: 01-convert
echo "DSSIM	File" > dssim-01-convert.tsv
FILES="01-convert/300/*.png 01-convert/600/*.png 01-convert/1200/*.png 01-convert/300/*.jpg 01-convert/600/*.jpg 01-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/01-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01-convert.tsv
done


# calculate difference: 02-convert
echo "DSSIM	File" > dssim-02-convert.tsv
FILES="02-convert/300/*.png 02-convert/600/*.png 02-convert/1200/*.png 02-convert/300/*.jpg 02-convert/600/*.jpg 02-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/02-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-02-convert.tsv
done


# calculate difference: 03-convert
echo "DSSIM	File" > dssim-03-convert.tsv
FILES="03-convert/300/*.png 03-convert/600/*.png 03-convert/1200/*.png 03-convert/300/*.jpg 03-convert/600/*.jpg 03-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/03-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-03-convert.tsv
done


# calculate difference: 04-convert
echo "DSSIM	File" > dssim-04-convert.tsv
FILES="04-convert/300/*.png 04-convert/600/*.png 04-convert/1200/*.png 04-convert/300/*.jpg 04-convert/600/*.jpg 04-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/04-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-04-convert.tsv
done


# calculate difference: 05-convert
echo "DSSIM	File" > dssim-05-convert.tsv
FILES="05-convert/300/*.png 05-convert/600/*.png 05-convert/1200/*.png 05-convert/300/*.jpg 05-convert/600/*.jpg 05-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/05-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-05-convert.tsv
done


# calculate difference: 06-convert
echo "DSSIM	File" > dssim-06-convert.tsv
FILES="06-convert/300/*.png 06-convert/600/*.png 06-convert/1200/*.png 06-convert/300/*.jpg 06-convert/600/*.jpg 06-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/06-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-06-convert.tsv
done


# calculate difference: 07-convert
echo "DSSIM	File" > dssim-07-convert.tsv
FILES="07-convert/300/*.png 07-convert/600/*.png 07-convert/1200/*.png 07-convert/300/*.jpg 07-convert/600/*.jpg 07-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/07-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-07-convert.tsv
done


# calculate difference: 08-convert
echo "DSSIM	File" > dssim-08-convert.tsv
FILES="08-convert/300/*.png 08-convert/600/*.png 08-convert/1200/*.png 08-convert/300/*.jpg 08-convert/600/*.jpg 08-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/08-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-08-convert.tsv
done


# calculate difference: 09-convert
echo "DSSIM	File" > dssim-09-convert.tsv
FILES="09-convert/300/*.png 09-convert/600/*.png 09-convert/1200/*.png 09-convert/300/*.jpg 09-convert/600/*.jpg 09-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/09-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-09-convert.tsv
done


# calculate difference: 10-convert
echo "DSSIM	File" > dssim-10-convert.tsv
FILES="10-convert/300/*.png 10-convert/600/*.png 10-convert/1200/*.png 10-convert/300/*.jpg 10-convert/600/*.jpg 10-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/10-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-10-convert.tsv
done


# calculate difference: 11-convert
echo "DSSIM	File" > dssim-11-convert.tsv
FILES="11-convert/300/*.png 11-convert/600/*.png 11-convert/1200/*.png 11-convert/300/*.jpg 11-convert/600/*.jpg 11-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/11-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-11-convert.tsv
done


# calculate difference: 12-convert
echo "DSSIM	File" > dssim-12-convert.tsv
FILES="12-convert/300/*.png 12-convert/600/*.png 12-convert/1200/*.png 12-convert/300/*.jpg 12-convert/600/*.jpg 12-convert/1200/*.jpg"
for f in $FILES
do
	orig="${f/12-convert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-12-convert.tsv
done
