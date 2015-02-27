#!/bin/bash

# setup dir/structure
rm -r none 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35
mkdir none 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35
mkdir none/300 01/300 02/300 03/300 04/300 05/300 06/300 07/300 08/300 09/300 10/300 11/300 12/300 13/300 14/300 15/300 16/300 17/300 18/300 19/300 20/300 21/300 22/300 23/300 24/300 25/300 26/300 27/300 28/300 29/300 30/300 31/300 32/300 33/300 34/300 35/300
mkdir none/600 01/600 02/600 03/600 04/600 05/600 06/600 07/600 08/600 09/600 10/600 11/600 12/600 13/600 14/600 15/600 16/600 17/600 18/600 19/600 20/600 21/600 22/600 23/600 24/600 25/600 26/600 27/600 28/600 29/600 30/600 31/600 32/600 33/600 34/600 35/600
mkdir none/1200 01/1200 02/1200 03/1200 04/1200 05/1200 06/1200 07/1200 08/1200 09/1200 10/1200 11/1200 12/1200 13/1200 14/1200 15/1200 16/1200 17/1200 18/1200 19/1200 20/1200 21/1200 22/1200 23/1200 24/1200 25/1200 26/1200 27/1200 28/1200 29/1200 30/1200 31/1200 32/1200 33/1200 34/1200 35/1200

echo "# Test 51: jpeg q-tables" > conclusions.md

# resize
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 01/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/01.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 01/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/01.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 01/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/01.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 01/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/01.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 01/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/01.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 01/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/01.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 02/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/02.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 02/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/02.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 02/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/02.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 02/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/02.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 02/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/02.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 02/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/02.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 03/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/03.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 03/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/03.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 03/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/03.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 03/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/03.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 03/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/03.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 03/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/03.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 04/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/04.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 04/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/04.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 04/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/04.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 04/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/04.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 04/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/04.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 04/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/04.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 05/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/05.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 05/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/05.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 05/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/05.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 05/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/05.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 05/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/05.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 05/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/05.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 06/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/06.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 06/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/06.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 06/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/06.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 06/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/06.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 06/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/06.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 06/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/06.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 07/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/07.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 07/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/07.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 07/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/07.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 07/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/07.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 07/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/07.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 07/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/07.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 08/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/08.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 08/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/08.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 08/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/08.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 08/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/08.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 08/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/08.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 08/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/08.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 09/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/09.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 09/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/09.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 09/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/09.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 09/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/09.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 09/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/09.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 09/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/09.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 10/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/10.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 10/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/10.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 10/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/10.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 10/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/10.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 10/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/10.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 10/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/10.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 11/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/11.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 11/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/11.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 11/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/11.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 11/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/11.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 11/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/11.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 11/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/11.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 12/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/12.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 12/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/12.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 12/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/12.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 12/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/12.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 12/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/12.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 12/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/12.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 13/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/13.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 13/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/13.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 13/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/13.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 13/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/13.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 13/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/13.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 13/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/13.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 14/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/14.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 14/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/14.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 14/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/14.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 14/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/14.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 14/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/14.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 14/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/14.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 15/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/15.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 15/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/15.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 15/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/15.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 15/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/15.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 15/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/15.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 15/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/15.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 16/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/16.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 16/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/16.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 16/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/16.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 16/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/16.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 16/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/16.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 16/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/16.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 17/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/17.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 17/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/17.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 17/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/17.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 17/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/17.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 17/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/17.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 17/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/17.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 18/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/18.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 18/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/18.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 18/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/18.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 18/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/18.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 18/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/18.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 18/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/18.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 19/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/19.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 19/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/19.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 19/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/19.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 19/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/19.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 19/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/19.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 19/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/19.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 20/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/20.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 20/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/20.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 20/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/20.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 20/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/20.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 20/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/20.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 20/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/20.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 21/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/21.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 21/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/21.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 21/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/21.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 21/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/21.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 21/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/21.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 21/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/21.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 22/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/22.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 22/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/22.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 22/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/22.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 22/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/22.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 22/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/22.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 22/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/22.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 23/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/23.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 23/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/23.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 23/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/23.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 23/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/23.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 23/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/23.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 23/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/23.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 24/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/24.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 24/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/24.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 24/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/24.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 24/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/24.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 24/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/24.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 24/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/24.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 25/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/25.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 25/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/25.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 25/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/25.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 25/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/25.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 25/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/25.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 25/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/25.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 26/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/26.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 26/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/26.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 26/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/26.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 26/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/26.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 26/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/26.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 26/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/26.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 27/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/27.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 27/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/27.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 27/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/27.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 27/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/27.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 27/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/27.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 27/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/27.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 28/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/28.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 28/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/28.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 28/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/28.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 28/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/28.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 28/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/28.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 28/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/28.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 29/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/29.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 29/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/29.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 29/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/29.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 29/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/29.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 29/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/29.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 29/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/29.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 30/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/30.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 30/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/30.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 30/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/30.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 30/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/30.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 30/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/30.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 30/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/30.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 31/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/31.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 31/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/31.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 31/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/31.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 31/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/31.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 31/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/31.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 31/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/31.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 32/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/32.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 32/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/32.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 32/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/32.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 32/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/32.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 32/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/32.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 32/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/32.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 33/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/33.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 33/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/33.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 33/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/33.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 33/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/33.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 33/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/33.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 33/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/33.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 34/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/34.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 34/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/34.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 34/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/34.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 34/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/34.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 34/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/34.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 34/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/34.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path 35/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/35.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 35/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/35.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 35/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/35.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 35/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/35.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path 35/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/35.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path 35/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define jpeg:q-table=qtables-xml/35.xml -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
# no point in doing this until after I optimize
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


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

# calculate difference: 01
echo "DSSIM	File" > dssim-01.tsv
FILES="01/300/* 01/600/* 01/1200/*"
for f in $FILES
do
	orig="${f/01\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-01.tsv
done

# calculate difference: 02
echo "DSSIM	File" > dssim-02.tsv
FILES="02/300/* 02/600/* 02/1200/*"
for f in $FILES
do
	orig="${f/02\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-02.tsv
done

# calculate difference: 03
echo "DSSIM	File" > dssim-03.tsv
FILES="03/300/* 03/600/* 03/1200/*"
for f in $FILES
do
	orig="${f/03\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-03.tsv
done

# calculate difference: 04
echo "DSSIM	File" > dssim-04.tsv
FILES="04/300/* 04/600/* 04/1200/*"
for f in $FILES
do
	orig="${f/04\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-04.tsv
done

# calculate difference: 05
echo "DSSIM	File" > dssim-05.tsv
FILES="05/300/* 05/600/* 05/1200/*"
for f in $FILES
do
	orig="${f/05\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-05.tsv
done

# calculate difference: 06
echo "DSSIM	File" > dssim-06.tsv
FILES="06/300/* 06/600/* 06/1200/*"
for f in $FILES
do
	orig="${f/06\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-06.tsv
done

# calculate difference: 07
echo "DSSIM	File" > dssim-07.tsv
FILES="07/300/* 07/600/* 07/1200/*"
for f in $FILES
do
	orig="${f/07\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-07.tsv
done

# calculate difference: 08
echo "DSSIM	File" > dssim-08.tsv
FILES="08/300/* 08/600/* 08/1200/*"
for f in $FILES
do
	orig="${f/08\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-08.tsv
done

# calculate difference: 09
echo "DSSIM	File" > dssim-09.tsv
FILES="09/300/* 09/600/* 09/1200/*"
for f in $FILES
do
	orig="${f/09\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-09.tsv
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

# calculate difference: 11
echo "DSSIM	File" > dssim-11.tsv
FILES="11/300/* 11/600/* 11/1200/*"
for f in $FILES
do
	orig="${f/11\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-11.tsv
done

# calculate difference: 12
echo "DSSIM	File" > dssim-12.tsv
FILES="12/300/* 12/600/* 12/1200/*"
for f in $FILES
do
	orig="${f/12\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-12.tsv
done

# calculate difference: 13
echo "DSSIM	File" > dssim-13.tsv
FILES="13/300/* 13/600/* 13/1200/*"
for f in $FILES
do
	orig="${f/13\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-13.tsv
done

# calculate difference: 14
echo "DSSIM	File" > dssim-14.tsv
FILES="14/300/* 14/600/* 14/1200/*"
for f in $FILES
do
	orig="${f/14\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-14.tsv
done

# calculate difference: 15
echo "DSSIM	File" > dssim-15.tsv
FILES="15/300/* 15/600/* 15/1200/*"
for f in $FILES
do
	orig="${f/15\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-15.tsv
done

# calculate difference: 16
echo "DSSIM	File" > dssim-16.tsv
FILES="16/300/* 16/600/* 16/1200/*"
for f in $FILES
do
	orig="${f/16\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-16.tsv
done

# calculate difference: 17
echo "DSSIM	File" > dssim-17.tsv
FILES="17/300/* 17/600/* 17/1200/*"
for f in $FILES
do
	orig="${f/17\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-17.tsv
done

# calculate difference: 18
echo "DSSIM	File" > dssim-18.tsv
FILES="18/300/* 18/600/* 18/1200/*"
for f in $FILES
do
	orig="${f/18\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-18.tsv
done

# calculate difference: 19
echo "DSSIM	File" > dssim-19.tsv
FILES="19/300/* 19/600/* 19/1200/*"
for f in $FILES
do
	orig="${f/19\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-19.tsv
done

# calculate difference: 20
echo "DSSIM	File" > dssim-20.tsv
FILES="20/300/* 20/600/* 20/1200/*"
for f in $FILES
do
	orig="${f/20\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-20.tsv
done

# calculate difference: 21
echo "DSSIM	File" > dssim-21.tsv
FILES="21/300/* 21/600/* 21/1200/*"
for f in $FILES
do
	orig="${f/21\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-21.tsv
done

# calculate difference: 22
echo "DSSIM	File" > dssim-22.tsv
FILES="22/300/* 22/600/* 22/1200/*"
for f in $FILES
do
	orig="${f/22\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-22.tsv
done

# calculate difference: 23
echo "DSSIM	File" > dssim-23.tsv
FILES="23/300/* 23/600/* 23/1200/*"
for f in $FILES
do
	orig="${f/23\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-23.tsv
done

# calculate difference: 24
echo "DSSIM	File" > dssim-24.tsv
FILES="24/300/* 24/600/* 24/1200/*"
for f in $FILES
do
	orig="${f/24\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-24.tsv
done

# calculate difference: 25
echo "DSSIM	File" > dssim-25.tsv
FILES="25/300/* 25/600/* 25/1200/*"
for f in $FILES
do
	orig="${f/25\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-25.tsv
done

# calculate difference: 26
echo "DSSIM	File" > dssim-26.tsv
FILES="26/300/* 26/600/* 26/1200/*"
for f in $FILES
do
	orig="${f/26\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-26.tsv
done

# calculate difference: 27
echo "DSSIM	File" > dssim-27.tsv
FILES="27/300/* 27/600/* 27/1200/*"
for f in $FILES
do
	orig="${f/27\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-27.tsv
done

# calculate difference: 28
echo "DSSIM	File" > dssim-28.tsv
FILES="28/300/* 28/600/* 28/1200/*"
for f in $FILES
do
	orig="${f/28\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-28.tsv
done

# calculate difference: 29
echo "DSSIM	File" > dssim-29.tsv
FILES="29/300/* 29/600/* 29/1200/*"
for f in $FILES
do
	orig="${f/29\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-29.tsv
done

# calculate difference: 30
echo "DSSIM	File" > dssim-30.tsv
FILES="30/300/* 30/600/* 30/1200/*"
for f in $FILES
do
	orig="${f/30\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-30.tsv
done

# calculate difference: 31
echo "DSSIM	File" > dssim-31.tsv
FILES="31/300/* 31/600/* 31/1200/*"
for f in $FILES
do
	orig="${f/31\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-31.tsv
done

# calculate difference: 32
echo "DSSIM	File" > dssim-32.tsv
FILES="32/300/* 32/600/* 32/1200/*"
for f in $FILES
do
	orig="${f/32\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-32.tsv
done

# calculate difference: 33
echo "DSSIM	File" > dssim-33.tsv
FILES="33/300/* 33/600/* 33/1200/*"
for f in $FILES
do
	orig="${f/33\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-33.tsv
done

# calculate difference: 34
echo "DSSIM	File" > dssim-34.tsv
FILES="34/300/* 34/600/* 34/1200/*"
for f in $FILES
do
	orig="${f/34\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-34.tsv
done

# calculate difference: 35
echo "DSSIM	File" > dssim-35.tsv
FILES="35/300/* 35/600/* 35/1200/*"
for f in $FILES
do
	orig="${f/35\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-35.tsv
done
