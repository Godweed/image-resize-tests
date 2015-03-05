#!/bin/bash

# setup dir/structure
rm -r default 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
mkdir default 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
mkdir default/300 00/300 01/300 02/300 03/300 04/300 05/300 06/300 07/300 08/300 09/300 10/300 11/300 12/300 13/300 14/300 15/300
mkdir default/600 00/600 01/600 02/600 03/600 04/600 05/600 06/600 07/600 08/600 09/600 10/600 11/600 12/600 13/600 14/600 15/600
mkdir default/1200 00/1200 01/1200 02/1200 03/1200 04/1200 05/1200 06/1200 07/1200 08/1200 09/1200 10/1200 11/1200 12/1200 13/1200 14/1200 15/1200

echo "# Test 63: unsharp radius 2" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 00/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 00/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 00/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 00/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 00/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 00/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 01/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 01/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 01/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 01/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 01/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 01/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 02/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 02/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 02/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 02/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 02/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 02/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 03/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 03/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 03/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 03/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 03/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 03/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 04/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 04/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 04/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 04/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 04/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 04/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 05/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 05/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 05/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 05/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 05/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 05/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 06/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.6x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.6x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 06/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.6x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.6x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 06/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.6x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 06/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.6x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 07/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.7x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.7x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 07/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.7x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.7x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 07/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.7x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 07/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.7x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 08/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.8x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.8x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 08/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.8x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.8x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 08/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.8x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 08/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.8x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 09/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.9x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.9x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 09/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.9x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.9x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 09/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.9x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 09/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.9x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 10/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 10/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 10/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 10/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.0x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 11/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 11/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 11/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 11/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 11/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 11/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.1x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 12/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 12/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 12/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 12/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 12/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 12/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.2x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 13/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 13/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 13/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 13/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 13/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 13/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.3x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 14/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 14/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 14/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.45x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 14/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 14/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 14/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.4x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 15/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 15/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 1.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 15/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 15/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 1.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 15/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 15/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 1.5x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

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
