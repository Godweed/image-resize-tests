#!/bin/bash

# setup dir/structure
rm -r average Average-cap Average16 Average4 Average9 Background bicubic bilinear Bilinear-cap Blend integer Integer-cap mesh Mesh-cap Nearest nearest-neighbor NearestNeighbor none spline Spline-cap
mkdir average Average-cap Average16 Average4 Average9 Background bicubic bilinear Bilinear-cap Blend integer Integer-cap mesh Mesh-cap Nearest nearest-neighbor NearestNeighbor none spline Spline-cap
mkdir average/300 Average-cap/300 Average16/300 Average4/300 Average9/300 Background/300 bicubic/300 bilinear/300 Bilinear-cap/300 Blend/300 integer/300 Integer-cap/300 mesh/300 Mesh-cap/300 Nearest/300 nearest-neighbor/300 NearestNeighbor/300 none/300 spline/300 Spline-cap/300
mkdir average/600 Average-cap/600 Average16/600 Average4/600 Average9/600 Background/600 bicubic/600 bilinear/600 Bilinear-cap/600 Blend/600 integer/600 Integer-cap/600 mesh/600 Mesh-cap/600 Nearest/600 nearest-neighbor/600 NearestNeighbor/600 none/600 spline/600 Spline-cap/600
mkdir average/1200 Average-cap/1200 Average16/1200 Average4/1200 Average9/1200 Background/1200 bicubic/1200 bilinear/1200 Bilinear-cap/1200 Blend/1200 integer/1200 Integer-cap/1200 mesh/1200 Mesh-cap/1200 Nearest/1200 nearest-neighbor/1200 NearestNeighbor/1200 none/1200 spline/1200 Spline-cap/1200

echo "# Test 20: interpolation setting" > conclusions.md

# resize
mogrify -path average/300 -interpolate average -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path average/300 -interpolate average -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path average/600 -interpolate average -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path average/600 -interpolate average -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path average/1200 -interpolate average -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path average/1200 -interpolate average -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Average-cap/300 -interpolate Average -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average-cap/300 -interpolate Average -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average-cap/600 -interpolate Average -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average-cap/600 -interpolate Average -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average-cap/1200 -interpolate Average -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average-cap/1200 -interpolate Average -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Average16/300 -interpolate Average16 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average16/300 -interpolate Average16 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average16/600 -interpolate Average16 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average16/600 -interpolate Average16 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average16/1200 -interpolate Average16 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average16/1200 -interpolate Average16 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Average4/300 -interpolate Average4 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average4/300 -interpolate Average4 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average4/600 -interpolate Average4 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average4/600 -interpolate Average4 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average4/1200 -interpolate Average4 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average4/1200 -interpolate Average4 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Average9/300 -interpolate Average9 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average9/300 -interpolate Average9 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average9/600 -interpolate Average9 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average9/600 -interpolate Average9 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Average9/1200 -interpolate Average9 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Average9/1200 -interpolate Average9 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Background/300 -interpolate Background -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Background/300 -interpolate Background -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Background/600 -interpolate Background -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Background/600 -interpolate Background -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Background/1200 -interpolate Background -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Background/1200 -interpolate Background -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path bicubic/300 -interpolate bicubic -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path bicubic/300 -interpolate bicubic -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path bicubic/600 -interpolate bicubic -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path bicubic/600 -interpolate bicubic -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path bicubic/1200 -interpolate bicubic -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path bicubic/1200 -interpolate bicubic -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path bilinear/300 -interpolate bilinear -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path bilinear/300 -interpolate bilinear -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path bilinear/600 -interpolate bilinear -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path bilinear/600 -interpolate bilinear -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path bilinear/1200 -interpolate bilinear -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path bilinear/1200 -interpolate bilinear -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Bilinear-cap/300 -interpolate Bilinear -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Bilinear-cap/300 -interpolate Bilinear -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Bilinear-cap/600 -interpolate Bilinear -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Bilinear-cap/600 -interpolate Bilinear -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Bilinear-cap/1200 -interpolate Bilinear -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Bilinear-cap/1200 -interpolate Bilinear -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Blend/300 -interpolate Blend -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Blend/300 -interpolate Blend -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Blend/600 -interpolate Blend -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Blend/600 -interpolate Blend -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Blend/1200 -interpolate Blend -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Blend/1200 -interpolate Blend -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path integer/300 -interpolate integer -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path integer/300 -interpolate integer -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path integer/600 -interpolate integer -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path integer/600 -interpolate integer -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path integer/1200 -interpolate integer -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path integer/1200 -interpolate integer -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Integer-cap/300 -interpolate Integer -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Integer-cap/300 -interpolate Integer -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Integer-cap/600 -interpolate Integer -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Integer-cap/600 -interpolate Integer -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Integer-cap/1200 -interpolate Integer -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Integer-cap/1200 -interpolate Integer -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path mesh/300 -interpolate mesh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path mesh/300 -interpolate mesh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path mesh/600 -interpolate mesh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path mesh/600 -interpolate mesh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path mesh/1200 -interpolate mesh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path mesh/1200 -interpolate mesh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Mesh-cap/300 -interpolate Mesh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Mesh-cap/300 -interpolate Mesh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Mesh-cap/600 -interpolate Mesh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Mesh-cap/600 -interpolate Mesh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Mesh-cap/1200 -interpolate Mesh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Mesh-cap/1200 -interpolate Mesh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Nearest/300 -interpolate Nearest -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Nearest/300 -interpolate Nearest -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Nearest/600 -interpolate Nearest -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Nearest/600 -interpolate Nearest -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Nearest/1200 -interpolate Nearest -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Nearest/1200 -interpolate Nearest -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path nearest-neighbor/300 -interpolate nearest-neighbor -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path nearest-neighbor/300 -interpolate nearest-neighbor -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path nearest-neighbor/600 -interpolate nearest-neighbor -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path nearest-neighbor/600 -interpolate nearest-neighbor -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path nearest-neighbor/1200 -interpolate nearest-neighbor -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path nearest-neighbor/1200 -interpolate nearest-neighbor -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path NearestNeighbor/300 -interpolate NearestNeighbor -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path NearestNeighbor/300 -interpolate NearestNeighbor -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path NearestNeighbor/600 -interpolate NearestNeighbor -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path NearestNeighbor/600 -interpolate NearestNeighbor -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path NearestNeighbor/1200 -interpolate NearestNeighbor -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path NearestNeighbor/1200 -interpolate NearestNeighbor -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path none/300 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path none/300 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path none/600 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path none/600 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path none/1200 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path none/1200 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path spline/300 -interpolate spline -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path spline/300 -interpolate spline -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path spline/600 -interpolate spline -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path spline/600 -interpolate spline -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path spline/1200 -interpolate spline -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path spline/1200 -interpolate spline -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png

mogrify -path Spline-cap/300 -interpolate Spline -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Spline-cap/300 -interpolate Spline -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Spline-cap/600 -interpolate Spline -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Spline-cap/600 -interpolate Spline -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png
mogrify -path Spline-cap/1200 -interpolate Spline -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.jpg
mogrify -path Spline-cap/1200 -interpolate Spline -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -quality 82 -define png:compression-filter=2 -define png:compression-level=6 -define png:compression-strategy=2 -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d average -q
imageoptim -d average -q
imageoptim -d average -q

imageoptim -d Average-cap -q
imageoptim -d Average-cap -q
imageoptim -d Average-cap -q

imageoptim -d Average16 -q
imageoptim -d Average16 -q
imageoptim -d Average16 -q

imageoptim -d Average4 -q
imageoptim -d Average4 -q
imageoptim -d Average4 -q

imageoptim -d Average9 -q
imageoptim -d Average9 -q
imageoptim -d Average9 -q

imageoptim -d Background -q
imageoptim -d Background -q
imageoptim -d Background -q

imageoptim -d bicubic -q
imageoptim -d bicubic -q
imageoptim -d bicubic -q

imageoptim -d bilinear -q
imageoptim -d bilinear -q
imageoptim -d bilinear -q

imageoptim -d Bilinear-cap -q
imageoptim -d Bilinear-cap -q
imageoptim -d Bilinear-cap -q

imageoptim -d Blend -q
imageoptim -d Blend -q
imageoptim -d Blend -q

imageoptim -d integer -q
imageoptim -d integer -q
imageoptim -d integer -q

imageoptim -d Integer-cap -q
imageoptim -d Integer-cap -q
imageoptim -d Integer-cap -q

imageoptim -d mesh -q
imageoptim -d mesh -q
imageoptim -d mesh -q

imageoptim -d Mesh-cap -q
imageoptim -d Mesh-cap -q
imageoptim -d Mesh-cap -q

imageoptim -d Nearest -q
imageoptim -d Nearest -q
imageoptim -d Nearest -q

imageoptim -d nearest-neighbor -q
imageoptim -d nearest-neighbor -q
imageoptim -d nearest-neighbor -q

imageoptim -d NearestNeighbor -q
imageoptim -d NearestNeighbor -q
imageoptim -d NearestNeighbor -q

imageoptim -d none -q
imageoptim -d none -q
imageoptim -d none -q

imageoptim -d spline -q
imageoptim -d spline -q
imageoptim -d spline -q

imageoptim -d Spline-cap -q
imageoptim -d Spline-cap -q
imageoptim -d Spline-cap -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: average
echo "DSSIM	File" > dssim-average.tsv
FILES="average/300/* average/600/* average/1200/*"
for f in $FILES
do
	orig="${f/average\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-average.tsv
done


# calculate difference: Average-cap
echo "DSSIM	File" > dssim-Average-cap.tsv
FILES="Average-cap/300/* Average-cap/600/* Average-cap/1200/*"
for f in $FILES
do
	orig="${f/Average-cap\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Average-cap.tsv
done


# calculate difference: Average16
echo "DSSIM	File" > dssim-Average16.tsv
FILES="Average16/300/* Average16/600/* Average16/1200/*"
for f in $FILES
do
	orig="${f/Average16\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Average16.tsv
done


# calculate difference: Average4
echo "DSSIM	File" > dssim-Average4.tsv
FILES="Average4/300/* Average4/600/* Average4/1200/*"
for f in $FILES
do
	orig="${f/Average4\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Average4.tsv
done


# calculate difference: Average9
echo "DSSIM	File" > dssim-Average9.tsv
FILES="Average9/300/* Average9/600/* Average9/1200/*"
for f in $FILES
do
	orig="${f/Average9\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Average9.tsv
done


# calculate difference: Background
echo "DSSIM	File" > dssim-Background.tsv
FILES="Background/300/* Background/600/* Background/1200/*"
for f in $FILES
do
	orig="${f/Background\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Background.tsv
done


# calculate difference: bicubic
echo "DSSIM	File" > dssim-bicubic.tsv
FILES="bicubic/300/* bicubic/600/* bicubic/1200/*"
for f in $FILES
do
	orig="${f/bicubic\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-bicubic.tsv
done


# calculate difference: bilinear
echo "DSSIM	File" > dssim-bilinear.tsv
FILES="bilinear/300/* bilinear/600/* bilinear/1200/*"
for f in $FILES
do
	orig="${f/bilinear\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-bilinear.tsv
done


# calculate difference: Bilinear-cap
echo "DSSIM	File" > dssim-Bilinear-cap.tsv
FILES="Bilinear-cap/300/* Bilinear-cap/600/* Bilinear-cap/1200/*"
for f in $FILES
do
	orig="${f/Bilinear-cap\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Bilinear-cap.tsv
done


# calculate difference: Blend
echo "DSSIM	File" > dssim-Blend.tsv
FILES="Blend/300/* Blend/600/* Blend/1200/*"
for f in $FILES
do
	orig="${f/Blend\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Blend.tsv
done


# calculate difference: integer
echo "DSSIM	File" > dssim-integer.tsv
FILES="integer/300/* integer/600/* integer/1200/*"
for f in $FILES
do
	orig="${f/integer\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-integer.tsv
done


# calculate difference: Integer-cap
echo "DSSIM	File" > dssim-Integer-cap.tsv
FILES="Integer-cap/300/* Integer-cap/600/* Integer-cap/1200/*"
for f in $FILES
do
	orig="${f/Integer-cap\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Integer-cap.tsv
done


# calculate difference: mesh
echo "DSSIM	File" > dssim-mesh.tsv
FILES="mesh/300/* mesh/600/* mesh/1200/*"
for f in $FILES
do
	orig="${f/mesh\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-mesh.tsv
done


# calculate difference: Mesh-cap
echo "DSSIM	File" > dssim-Mesh-cap.tsv
FILES="Mesh-cap/300/* Mesh-cap/600/* Mesh-cap/1200/*"
for f in $FILES
do
	orig="${f/Mesh-cap\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Mesh-cap.tsv
done


# calculate difference: Nearest
echo "DSSIM	File" > dssim-Nearest.tsv
FILES="Nearest/300/* Nearest/600/* Nearest/1200/*"
for f in $FILES
do
	orig="${f/Nearest\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Nearest.tsv
done


# calculate difference: nearest-neighbor
echo "DSSIM	File" > dssim-nearest-neighbor.tsv
FILES="nearest-neighbor/300/* nearest-neighbor/600/* nearest-neighbor/1200/*"
for f in $FILES
do
	orig="${f/nearest-neighbor\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-nearest-neighbor.tsv
done


# calculate difference: NearestNeighbor
echo "DSSIM	File" > dssim-NearestNeighbor.tsv
FILES="NearestNeighbor/300/* NearestNeighbor/600/* NearestNeighbor/1200/*"
for f in $FILES
do
	orig="${f/NearestNeighbor\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-NearestNeighbor.tsv
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


# calculate difference: spline
echo "DSSIM	File" > dssim-spline.tsv
FILES="spline/300/* spline/600/* spline/1200/*"
for f in $FILES
do
	orig="${f/spline\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-spline.tsv
done


# calculate difference: Spline-cap
echo "DSSIM	File" > dssim-Spline-cap.tsv
FILES="Spline-cap/300/* Spline-cap/600/* Spline-cap/1200/*"
for f in $FILES
do
	orig="${f/Spline-cap\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Spline-cap.tsv
done
