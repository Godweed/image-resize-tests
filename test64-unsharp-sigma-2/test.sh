#!/bin/bash

# setup dir/structure
rm -r default 000 005 010 015 020 025 030 035 040 045 050 055 060 065 070 075 080 085 090 095 100
mkdir default 000 005 010 015 020 025 030 035 040 045 050 055 060 065 070 075 080 085 090 095 100
mkdir default/300 000/300 005/300 010/300 015/300 020/300 025/300 030/300 035/300 040/300 045/300 050/300 055/300 060/300 065/300 070/300 075/300 080/300 085/300 090/300 095/300 100/300
mkdir default/600 000/600 005/600 010/600 015/600 020/600 025/600 030/600 035/600 040/600 045/600 050/600 055/600 060/600 065/600 070/600 075/600 080/600 085/600 090/600 095/600 100/600
mkdir default/1200 000/1200 005/1200 010/1200 015/1200 020/1200 025/1200 030/1200 035/1200 040/1200 045/1200 050/1200 055/1200 060/1200 065/1200 070/1200 075/1200 080/1200 085/1200 090/1200 095/1200 100/1200

echo "# Test 64: unsharp sigma 2" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 000/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 000/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 000/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 000/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 000/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 000/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 005/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.05+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 005/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.05+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 005/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.05+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 005/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.05+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 005/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.05+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 005/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.05+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 010/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 010/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 010/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 010/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 010/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 010/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.10+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 015/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.15+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 015/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.15+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 015/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.15+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 015/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.15+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 015/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.15+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 015/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.15+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 020/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.20+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 020/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.20+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 020/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.20+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 020/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.20+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 020/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.20+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 020/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.20+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 025/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 025/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 025/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 025/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 025/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 025/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 030/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.30+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 030/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.30+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 030/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.30+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 030/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.30+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 030/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.30+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 030/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.30+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 035/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.35+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 035/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.35+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 035/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.35+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 035/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.35+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 035/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.35+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 035/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.35+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 040/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.40+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 040/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.40+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 040/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.40+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 040/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.40+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 040/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.40+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 040/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.40+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 045/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.45+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 045/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.45+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 045/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.45+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 045/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.45+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 045/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.45+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 045/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.45+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 050/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.50+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 050/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.50+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 050/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.50+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 050/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.50+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 050/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.50+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 050/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.50+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 055/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.55+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 055/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.55+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 055/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.55+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 055/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.55+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 055/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.55+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 055/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.55+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 060/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.60+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 060/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.60+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 060/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.60+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 060/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.60+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 060/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.60+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 060/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.60+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 065/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.65+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 065/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.65+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 065/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.65+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 065/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.65+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 065/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.65+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 065/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.65+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 070/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.70+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 070/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.70+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 070/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.70+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 070/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.70+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 070/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.70+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 070/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.70+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 075/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.75+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 075/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.75+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 075/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.75+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 075/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.75+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 075/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.75+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 075/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.75+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 080/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.80+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 080/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.80+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 080/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.80+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 080/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.80+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 080/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.80+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 080/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.80+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 085/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.85+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 085/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.85+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 085/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.85+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 085/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.85+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 085/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.85+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 085/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.85+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 090/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.90+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 090/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.90+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 090/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.90+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 090/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.90+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 090/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.90+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 090/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.90+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 095/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.95+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 095/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.95+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 095/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.95+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 095/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.95+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 095/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.95+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 095/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.95+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path 100/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x1.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 100/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x1.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 100/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x1.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 100/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x1.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path 100/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x1.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path 100/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x1.00+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 000 -q
imageoptim -d 000 -q
imageoptim -d 000 -q

imageoptim -d 005 -q
imageoptim -d 005 -q
imageoptim -d 005 -q

imageoptim -d 010 -q
imageoptim -d 010 -q
imageoptim -d 010 -q

imageoptim -d 015 -q
imageoptim -d 015 -q
imageoptim -d 015 -q

imageoptim -d 020 -q
imageoptim -d 020 -q
imageoptim -d 020 -q

imageoptim -d 025 -q
imageoptim -d 025 -q
imageoptim -d 025 -q

imageoptim -d 030 -q
imageoptim -d 030 -q
imageoptim -d 030 -q

imageoptim -d 035 -q
imageoptim -d 035 -q
imageoptim -d 035 -q

imageoptim -d 040 -q
imageoptim -d 040 -q
imageoptim -d 040 -q

imageoptim -d 045 -q
imageoptim -d 045 -q
imageoptim -d 045 -q

imageoptim -d 050 -q
imageoptim -d 050 -q
imageoptim -d 050 -q

imageoptim -d 055 -q
imageoptim -d 055 -q
imageoptim -d 055 -q

imageoptim -d 060 -q
imageoptim -d 060 -q
imageoptim -d 060 -q

imageoptim -d 065 -q
imageoptim -d 065 -q
imageoptim -d 065 -q

imageoptim -d 070 -q
imageoptim -d 070 -q
imageoptim -d 070 -q

imageoptim -d 075 -q
imageoptim -d 075 -q
imageoptim -d 075 -q

imageoptim -d 080 -q
imageoptim -d 080 -q
imageoptim -d 080 -q

imageoptim -d 085 -q
imageoptim -d 085 -q
imageoptim -d 085 -q

imageoptim -d 090 -q
imageoptim -d 090 -q
imageoptim -d 090 -q

imageoptim -d 095 -q
imageoptim -d 095 -q
imageoptim -d 095 -q

imageoptim -d 100 -q
imageoptim -d 100 -q
imageoptim -d 100 -q


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


# calculate difference: 0.00
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


# calculate difference: 0.05
echo "DSSIM	File" > dssim-005.tsv
FILES="005/300/*.png 005/600/*.png 005/1200/*.png 005/300/*.jpg 005/600/*.jpg 005/1200/*.jpg"
for f in $FILES
do
	orig="${f/005\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-005.tsv
done


# calculate difference: 0.10
echo "DSSIM	File" > dssim-010.tsv
FILES="010/300/*.png 010/600/*.png 010/1200/*.png 010/300/*.jpg 010/600/*.jpg 010/1200/*.jpg"
for f in $FILES
do
	orig="${f/010\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-010.tsv
done


# calculate difference: 0.15
echo "DSSIM	File" > dssim-015.tsv
FILES="015/300/*.png 015/600/*.png 015/1200/*.png 015/300/*.jpg 015/600/*.jpg 015/1200/*.jpg"
for f in $FILES
do
	orig="${f/015\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-015.tsv
done


# calculate difference: 0.20
echo "DSSIM	File" > dssim-020.tsv
FILES="020/300/*.png 020/600/*.png 020/1200/*.png 020/300/*.jpg 020/600/*.jpg 020/1200/*.jpg"
for f in $FILES
do
	orig="${f/020\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-020.tsv
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


# calculate difference: 0.30
echo "DSSIM	File" > dssim-030.tsv
FILES="030/300/*.png 030/600/*.png 030/1200/*.png 030/300/*.jpg 030/600/*.jpg 030/1200/*.jpg"
for f in $FILES
do
	orig="${f/030\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-030.tsv
done


# calculate difference: 0.35
echo "DSSIM	File" > dssim-035.tsv
FILES="035/300/*.png 035/600/*.png 035/1200/*.png 035/300/*.jpg 035/600/*.jpg 035/1200/*.jpg"
for f in $FILES
do
	orig="${f/035\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-035.tsv
done


# calculate difference: 0.40
echo "DSSIM	File" > dssim-040.tsv
FILES="040/300/*.png 040/600/*.png 040/1200/*.png 040/300/*.jpg 040/600/*.jpg 040/1200/*.jpg"
for f in $FILES
do
	orig="${f/040\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-040.tsv
done


# calculate difference: 0.45
echo "DSSIM	File" > dssim-045.tsv
FILES="045/300/*.png 045/600/*.png 045/1200/*.png 045/300/*.jpg 045/600/*.jpg 045/1200/*.jpg"
for f in $FILES
do
	orig="${f/045\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-045.tsv
done


# calculate difference: 0.50
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


# calculate difference: 0.55
echo "DSSIM	File" > dssim-055.tsv
FILES="055/300/*.png 055/600/*.png 055/1200/*.png 055/300/*.jpg 055/600/*.jpg 055/1200/*.jpg"
for f in $FILES
do
	orig="${f/055\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-055.tsv
done


# calculate difference: 0.60
echo "DSSIM	File" > dssim-060.tsv
FILES="060/300/*.png 060/600/*.png 060/1200/*.png 060/300/*.jpg 060/600/*.jpg 060/1200/*.jpg"
for f in $FILES
do
	orig="${f/060\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-060.tsv
done


# calculate difference: 0.65
echo "DSSIM	File" > dssim-065.tsv
FILES="065/300/*.png 065/600/*.png 065/1200/*.png 065/300/*.jpg 065/600/*.jpg 065/1200/*.jpg"
for f in $FILES
do
	orig="${f/065\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-065.tsv
done


# calculate difference: 0.70
echo "DSSIM	File" > dssim-070.tsv
FILES="070/300/*.png 070/600/*.png 070/1200/*.png 070/300/*.jpg 070/600/*.jpg 070/1200/*.jpg"
for f in $FILES
do
	orig="${f/070\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-070.tsv
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


# calculate difference: 0.80
echo "DSSIM	File" > dssim-080.tsv
FILES="080/300/*.png 080/600/*.png 080/1200/*.png 080/300/*.jpg 080/600/*.jpg 080/1200/*.jpg"
for f in $FILES
do
	orig="${f/080\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-080.tsv
done


# calculate difference: 0.85
echo "DSSIM	File" > dssim-085.tsv
FILES="085/300/*.png 085/600/*.png 085/1200/*.png 085/300/*.jpg 085/600/*.jpg 085/1200/*.jpg"
for f in $FILES
do
	orig="${f/085\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-085.tsv
done


# calculate difference: 0.90
echo "DSSIM	File" > dssim-090.tsv
FILES="090/300/*.png 090/600/*.png 090/1200/*.png 090/300/*.jpg 090/600/*.jpg 090/1200/*.jpg"
for f in $FILES
do
	orig="${f/090\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-090.tsv
done


# calculate difference: 0.95
echo "DSSIM	File" > dssim-095.tsv
FILES="095/300/*.png 095/600/*.png 095/1200/*.png 095/300/*.jpg 095/600/*.jpg 095/1200/*.jpg"
for f in $FILES
do
	orig="${f/095\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-095.tsv
done


# calculate difference: 1.00
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
