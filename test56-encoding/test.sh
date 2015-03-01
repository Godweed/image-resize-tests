#!/bin/bash

# setup dir/structure
rm -r default AdobeCustom AdobeExpert AdobeStandard AppleRoman BIG5 GB2312 Latin2 None SJIScode Symbol Unicode Wansung
mkdir default AdobeCustom AdobeExpert AdobeStandard AppleRoman BIG5 GB2312 Latin2 None SJIScode Symbol Unicode Wansung
mkdir default/300 AdobeCustom/300 AdobeExpert/300 AdobeStandard/300 AppleRoman/300 BIG5/300 GB2312/300 Latin2/300 None/300 SJIScode/300 Symbol/300 Unicode/300 Wansung/300
mkdir default/600 AdobeCustom/600 AdobeExpert/600 AdobeStandard/600 AppleRoman/600 BIG5/600 GB2312/600 Latin2/600 None/600 SJIScode/600 Symbol/600 Unicode/600 Wansung/600
mkdir default/1200 AdobeCustom/1200 AdobeExpert/1200 AdobeStandard/1200 AppleRoman/1200 BIG5/1200 GB2312/1200 Latin2/1200 None/1200 SJIScode/1200 Symbol/1200 Unicode/1200 Wansung/1200

echo "# Test 56: encoding" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path AdobeCustom/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeCustom -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeCustom/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeCustom -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AdobeCustom/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeCustom -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeCustom/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeCustom -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AdobeCustom/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeCustom -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeCustom/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeCustom -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path AdobeExpert/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeExpert -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeExpert/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeExpert -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AdobeExpert/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeExpert -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeExpert/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeExpert -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AdobeExpert/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeExpert -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeExpert/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeExpert -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path AdobeStandard/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeStandard -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeStandard/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeStandard -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AdobeStandard/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeStandard -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeStandard/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeStandard -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AdobeStandard/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeStandard -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AdobeStandard/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AdobeStandard -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path AppleRoman/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AppleRoman -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AppleRoman/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AppleRoman -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AppleRoman/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AppleRoman -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AppleRoman/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AppleRoman -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path AppleRoman/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AppleRoman -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path AppleRoman/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding AppleRoman -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path BIG5/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding BIG5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path BIG5/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding BIG5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path BIG5/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding BIG5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path BIG5/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding BIG5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path BIG5/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding BIG5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path BIG5/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding BIG5 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path GB2312/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding GB2312 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path GB2312/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding GB2312 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path GB2312/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding GB2312 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path GB2312/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding GB2312 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path GB2312/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding GB2312 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path GB2312/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding GB2312 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Latin2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Latin2 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Latin2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Latin2 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Latin2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Latin2 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Latin2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Latin2 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Latin2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Latin2 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Latin2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Latin2 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path None/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding None -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path None/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding None -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path None/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding None -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path None/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding None -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path None/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding None -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path None/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding None -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path SJIScode/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding SJIScode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path SJIScode/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding SJIScode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path SJIScode/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding SJIScode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path SJIScode/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding SJIScode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path SJIScode/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding SJIScode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path SJIScode/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding SJIScode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Symbol/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Symbol -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Symbol/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Symbol -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Symbol/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Symbol -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Symbol/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Symbol -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Symbol/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Symbol -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Symbol/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Symbol -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Unicode/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Unicode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Unicode/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Unicode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Unicode/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Unicode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Unicode/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Unicode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Unicode/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Unicode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Unicode/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Unicode -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Wansung/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Wansung -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Wansung/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Wansung -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Wansung/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Wansung -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Wansung/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Wansung -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Wansung/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Wansung -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Wansung/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -encoding Wansung -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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

# calculate difference: AdobeCustom
echo "DSSIM	File" > dssim-AdobeCustom.tsv
FILES="AdobeCustom/300/* AdobeCustom/600/* AdobeCustom/1200/*"
for f in $FILES
do
	orig="${f/AdobeCustom\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-AdobeCustom.tsv
done

# calculate difference: AdobeExpert
echo "DSSIM	File" > dssim-AdobeExpert.tsv
FILES="AdobeExpert/300/* AdobeExpert/600/* AdobeExpert/1200/*"
for f in $FILES
do
	orig="${f/AdobeExpert\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-AdobeExpert.tsv
done

# calculate difference: AdobeStandard
echo "DSSIM	File" > dssim-AdobeStandard.tsv
FILES="AdobeStandard/300/* AdobeStandard/600/* AdobeStandard/1200/*"
for f in $FILES
do
	orig="${f/AdobeStandard\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-AdobeStandard.tsv
done

# calculate difference: AppleRoman
echo "DSSIM	File" > dssim-AppleRoman.tsv
FILES="AppleRoman/300/* AppleRoman/600/* AppleRoman/1200/*"
for f in $FILES
do
	orig="${f/AppleRoman\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-AppleRoman.tsv
done

# calculate difference: BIG5
echo "DSSIM	File" > dssim-BIG5.tsv
FILES="BIG5/300/* BIG5/600/* BIG5/1200/*"
for f in $FILES
do
	orig="${f/BIG5\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-BIG5.tsv
done

# calculate difference: GB2312
echo "DSSIM	File" > dssim-GB2312.tsv
FILES="GB2312/300/* GB2312/600/* GB2312/1200/*"
for f in $FILES
do
	orig="${f/GB2312\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-GB2312.tsv
done

# calculate difference: Latin2
echo "DSSIM	File" > dssim-Latin2.tsv
FILES="Latin2/300/* Latin2/600/* Latin2/1200/*"
for f in $FILES
do
	orig="${f/Latin2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Latin2.tsv
done

# calculate difference: None
echo "DSSIM	File" > dssim-None.tsv
FILES="None/300/* None/600/* None/1200/*"
for f in $FILES
do
	orig="${f/None\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-None.tsv
done

# calculate difference: SJIScode
echo "DSSIM	File" > dssim-SJIScode.tsv
FILES="SJIScode/300/* SJIScode/600/* SJIScode/1200/*"
for f in $FILES
do
	orig="${f/SJIScode\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-SJIScode.tsv
done

# calculate difference: Symbol
echo "DSSIM	File" > dssim-Symbol.tsv
FILES="Symbol/300/* Symbol/600/* Symbol/1200/*"
for f in $FILES
do
	orig="${f/Symbol\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Symbol.tsv
done

# calculate difference: Unicode
echo "DSSIM	File" > dssim-Unicode.tsv
FILES="Unicode/300/* Unicode/600/* Unicode/1200/*"
for f in $FILES
do
	orig="${f/Unicode\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Unicode.tsv
done

# calculate difference: Wansung
echo "DSSIM	File" > dssim-Wansung.tsv
FILES="Wansung/300/* Wansung/600/* Wansung/1200/*"
for f in $FILES
do
	orig="${f/Wansung\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Wansung.tsv
done
