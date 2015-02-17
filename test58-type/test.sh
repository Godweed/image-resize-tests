#!/bin/bash

# setup dir/structure
rm -r default Bilevel ColorSeparation ColorSeparationAlpha ColorSeparationMatte Grayscale GrayscaleAlpha GrayscaleMatte Optimize Palette PaletteBilevelAlpha PaletteBilevelMatte PaletteAlpha PaletteMatte TrueColorAlpha TrueColorMatte TrueColor
mkdir default Bilevel ColorSeparation ColorSeparationAlpha ColorSeparationMatte Grayscale GrayscaleAlpha GrayscaleMatte Optimize Palette PaletteBilevelAlpha PaletteBilevelMatte PaletteAlpha PaletteMatte TrueColorAlpha TrueColorMatte TrueColor
mkdir default/300 Bilevel/300 ColorSeparation/300 ColorSeparationAlpha/300 ColorSeparationMatte/300 Grayscale/300 GrayscaleAlpha/300 GrayscaleMatte/300 Optimize/300 Palette/300 PaletteBilevelAlpha/300 PaletteBilevelMatte/300 PaletteAlpha/300 PaletteMatte/300 TrueColorAlpha/300 TrueColorMatte/300 TrueColor/300
mkdir default/600 Bilevel/600 ColorSeparation/600 ColorSeparationAlpha/600 ColorSeparationMatte/600 Grayscale/600 GrayscaleAlpha/600 GrayscaleMatte/600 Optimize/600 Palette/600 PaletteBilevelAlpha/600 PaletteBilevelMatte/600 PaletteAlpha/600 PaletteMatte/600 TrueColorAlpha/600 TrueColorMatte/600 TrueColor/600
mkdir default/1200 Bilevel/1200 ColorSeparation/1200 ColorSeparationAlpha/1200 ColorSeparationMatte/1200 Grayscale/1200 GrayscaleAlpha/1200 GrayscaleMatte/1200 Optimize/1200 Palette/1200 PaletteBilevelAlpha/1200 PaletteBilevelMatte/1200 PaletteAlpha/1200 PaletteMatte/1200 TrueColorAlpha/1200 TrueColorMatte/1200 TrueColor/1200

echo "# Test 58: type" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path Bilevel/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Bilevel -interlace none ../assets-optimized/*.jpg
mogrify -path Bilevel/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Bilevel -interlace none ../assets-optimized/*.png
mogrify -path Bilevel/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Bilevel -interlace none ../assets-optimized/*.jpg
mogrify -path Bilevel/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Bilevel -interlace none ../assets-optimized/*.png
mogrify -path Bilevel/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Bilevel -interlace none ../assets-optimized/*.jpg
mogrify -path Bilevel/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Bilevel -interlace none ../assets-optimized/*.png

mogrify -path ColorSeparation/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparation -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparation/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparation -interlace none ../assets-optimized/*.png
mogrify -path ColorSeparation/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparation -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparation/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparation -interlace none ../assets-optimized/*.png
mogrify -path ColorSeparation/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparation -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparation/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparation -interlace none ../assets-optimized/*.png

mogrify -path ColorSeparationAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparationAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationAlpha -interlace none ../assets-optimized/*.png
mogrify -path ColorSeparationAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparationAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationAlpha -interlace none ../assets-optimized/*.png
mogrify -path ColorSeparationAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparationAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationAlpha -interlace none ../assets-optimized/*.png

mogrify -path ColorSeparationMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationMatte -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparationMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationMatte -interlace none ../assets-optimized/*.png
mogrify -path ColorSeparationMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationMatte -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparationMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationMatte -interlace none ../assets-optimized/*.png
mogrify -path ColorSeparationMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationMatte -interlace none ../assets-optimized/*.jpg
mogrify -path ColorSeparationMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type ColorSeparationMatte -interlace none ../assets-optimized/*.png

mogrify -path Grayscale/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Grayscale -interlace none ../assets-optimized/*.jpg
mogrify -path Grayscale/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Grayscale -interlace none ../assets-optimized/*.png
mogrify -path Grayscale/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Grayscale -interlace none ../assets-optimized/*.jpg
mogrify -path Grayscale/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Grayscale -interlace none ../assets-optimized/*.png
mogrify -path Grayscale/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Grayscale -interlace none ../assets-optimized/*.jpg
mogrify -path Grayscale/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Grayscale -interlace none ../assets-optimized/*.png

mogrify -path GrayscaleAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path GrayscaleAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleAlpha -interlace none ../assets-optimized/*.png
mogrify -path GrayscaleAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path GrayscaleAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleAlpha -interlace none ../assets-optimized/*.png
mogrify -path GrayscaleAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path GrayscaleAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleAlpha -interlace none ../assets-optimized/*.png

mogrify -path GrayscaleMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleMatte -interlace none ../assets-optimized/*.jpg
mogrify -path GrayscaleMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleMatte -interlace none ../assets-optimized/*.png
mogrify -path GrayscaleMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleMatte -interlace none ../assets-optimized/*.jpg
mogrify -path GrayscaleMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleMatte -interlace none ../assets-optimized/*.png
mogrify -path GrayscaleMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleMatte -interlace none ../assets-optimized/*.jpg
mogrify -path GrayscaleMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type GrayscaleMatte -interlace none ../assets-optimized/*.png

mogrify -path Optimize/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Optimize -interlace none ../assets-optimized/*.jpg
mogrify -path Optimize/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Optimize -interlace none ../assets-optimized/*.png
mogrify -path Optimize/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Optimize -interlace none ../assets-optimized/*.jpg
mogrify -path Optimize/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Optimize -interlace none ../assets-optimized/*.png
mogrify -path Optimize/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Optimize -interlace none ../assets-optimized/*.jpg
mogrify -path Optimize/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Optimize -interlace none ../assets-optimized/*.png

mogrify -path Palette/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Palette -interlace none ../assets-optimized/*.jpg
mogrify -path Palette/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Palette -interlace none ../assets-optimized/*.png
mogrify -path Palette/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Palette -interlace none ../assets-optimized/*.jpg
mogrify -path Palette/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Palette -interlace none ../assets-optimized/*.png
mogrify -path Palette/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Palette -interlace none ../assets-optimized/*.jpg
mogrify -path Palette/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type Palette -interlace none ../assets-optimized/*.png

mogrify -path PaletteBilevelAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteBilevelAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelAlpha -interlace none ../assets-optimized/*.png
mogrify -path PaletteBilevelAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteBilevelAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelAlpha -interlace none ../assets-optimized/*.png
mogrify -path PaletteBilevelAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteBilevelAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelAlpha -interlace none ../assets-optimized/*.png

mogrify -path PaletteBilevelMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelMatte -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteBilevelMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelMatte -interlace none ../assets-optimized/*.png
mogrify -path PaletteBilevelMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelMatte -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteBilevelMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelMatte -interlace none ../assets-optimized/*.png
mogrify -path PaletteBilevelMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelMatte -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteBilevelMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteBilevelMatte -interlace none ../assets-optimized/*.png

mogrify -path PaletteAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteAlpha -interlace none ../assets-optimized/*.png
mogrify -path PaletteAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteAlpha -interlace none ../assets-optimized/*.png
mogrify -path PaletteAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteAlpha -interlace none ../assets-optimized/*.png

mogrify -path PaletteMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteMatte -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteMatte -interlace none ../assets-optimized/*.png
mogrify -path PaletteMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteMatte -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteMatte -interlace none ../assets-optimized/*.png
mogrify -path PaletteMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteMatte -interlace none ../assets-optimized/*.jpg
mogrify -path PaletteMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type PaletteMatte -interlace none ../assets-optimized/*.png

mogrify -path TrueColorAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColorAlpha/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorAlpha -interlace none ../assets-optimized/*.png
mogrify -path TrueColorAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColorAlpha/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorAlpha -interlace none ../assets-optimized/*.png
mogrify -path TrueColorAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorAlpha -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColorAlpha/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorAlpha -interlace none ../assets-optimized/*.png

mogrify -path TrueColorMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorMatte -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColorMatte/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorMatte -interlace none ../assets-optimized/*.png
mogrify -path TrueColorMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorMatte -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColorMatte/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorMatte -interlace none ../assets-optimized/*.png
mogrify -path TrueColorMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorMatte -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColorMatte/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColorMatte -interlace none ../assets-optimized/*.png

mogrify -path TrueColor/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColor -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColor/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColor -interlace none ../assets-optimized/*.png
mogrify -path TrueColor/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColor -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColor/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColor -interlace none ../assets-optimized/*.png
mogrify -path TrueColor/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColor -interlace none ../assets-optimized/*.jpg
mogrify -path TrueColor/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -type TrueColor -interlace none ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d Bilevel -q
imageoptim -d Bilevel -q
imageoptim -d Bilevel -q

imageoptim -d ColorSeparation -q
imageoptim -d ColorSeparation -q
imageoptim -d ColorSeparation -q

imageoptim -d ColorSeparationAlpha -q
imageoptim -d ColorSeparationAlpha -q
imageoptim -d ColorSeparationAlpha -q

imageoptim -d ColorSeparationMatte -q
imageoptim -d ColorSeparationMatte -q
imageoptim -d ColorSeparationMatte -q

imageoptim -d Grayscale -q
imageoptim -d Grayscale -q
imageoptim -d Grayscale -q

imageoptim -d GrayscaleAlpha -q
imageoptim -d GrayscaleAlpha -q
imageoptim -d GrayscaleAlpha -q

imageoptim -d GrayscaleMatte -q
imageoptim -d GrayscaleMatte -q
imageoptim -d GrayscaleMatte -q

imageoptim -d Optimize -q
imageoptim -d Optimize -q
imageoptim -d Optimize -q

imageoptim -d Palette -q
imageoptim -d Palette -q
imageoptim -d Palette -q

imageoptim -d PaletteBilevelAlpha -q
imageoptim -d PaletteBilevelAlpha -q
imageoptim -d PaletteBilevelAlpha -q

imageoptim -d PaletteBilevelMatte -q
imageoptim -d PaletteBilevelMatte -q
imageoptim -d PaletteBilevelMatte -q

imageoptim -d PaletteAlpha -q
imageoptim -d PaletteAlpha -q
imageoptim -d PaletteAlpha -q

imageoptim -d PaletteMatte -q
imageoptim -d PaletteMatte -q
imageoptim -d PaletteMatte -q

imageoptim -d TrueColorAlpha -q
imageoptim -d TrueColorAlpha -q
imageoptim -d TrueColorAlpha -q

imageoptim -d TrueColorMatte -q
imageoptim -d TrueColorMatte -q
imageoptim -d TrueColorMatte -q

imageoptim -d TrueColor -q
imageoptim -d TrueColor -q
imageoptim -d TrueColor -q


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

# calculate difference: Bilevel
echo "DSSIM	File" > dssim-Bilevel.tsv
FILES="Bilevel/300/* Bilevel/600/* Bilevel/1200/*"
for f in $FILES
do
	orig="${f/Bilevel\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Bilevel.tsv
done

# calculate difference: ColorSeparation
echo "DSSIM	File" > dssim-ColorSeparation.tsv
FILES="ColorSeparation/300/* ColorSeparation/600/* ColorSeparation/1200/*"
for f in $FILES
do
	orig="${f/ColorSeparation\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-ColorSeparation.tsv
done

# calculate difference: ColorSeparationAlpha
echo "DSSIM	File" > dssim-ColorSeparationAlpha.tsv
FILES="ColorSeparationAlpha/300/* ColorSeparationAlpha/600/* ColorSeparationAlpha/1200/*"
for f in $FILES
do
	orig="${f/ColorSeparationAlpha\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-ColorSeparationAlpha.tsv
done

# calculate difference: ColorSeparationMatte
echo "DSSIM	File" > dssim-ColorSeparationMatte.tsv
FILES="ColorSeparationMatte/300/* ColorSeparationMatte/600/* ColorSeparationMatte/1200/*"
for f in $FILES
do
	orig="${f/ColorSeparationMatte\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-ColorSeparationMatte.tsv
done

# calculate difference: Grayscale
echo "DSSIM	File" > dssim-Grayscale.tsv
FILES="Grayscale/300/* Grayscale/600/* Grayscale/1200/*"
for f in $FILES
do
	orig="${f/Grayscale\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Grayscale.tsv
done

# calculate difference: GrayscaleAlpha
echo "DSSIM	File" > dssim-GrayscaleAlpha.tsv
FILES="GrayscaleAlpha/300/* GrayscaleAlpha/600/* GrayscaleAlpha/1200/*"
for f in $FILES
do
	orig="${f/GrayscaleAlpha\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-GrayscaleAlpha.tsv
done

# calculate difference: GrayscaleMatte
echo "DSSIM	File" > dssim-GrayscaleMatte.tsv
FILES="GrayscaleMatte/300/* GrayscaleMatte/600/* GrayscaleMatte/1200/*"
for f in $FILES
do
	orig="${f/GrayscaleMatte\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-GrayscaleMatte.tsv
done

# calculate difference: Optimize
echo "DSSIM	File" > dssim-Optimize.tsv
FILES="Optimize/300/* Optimize/600/* Optimize/1200/*"
for f in $FILES
do
	orig="${f/Optimize\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Optimize.tsv
done

# calculate difference: Palette
echo "DSSIM	File" > dssim-Palette.tsv
FILES="Palette/300/* Palette/600/* Palette/1200/*"
for f in $FILES
do
	orig="${f/Palette\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Palette.tsv
done

# calculate difference: PaletteBilevelAlpha
echo "DSSIM	File" > dssim-PaletteBilevelAlpha.tsv
FILES="PaletteBilevelAlpha/300/* PaletteBilevelAlpha/600/* PaletteBilevelAlpha/1200/*"
for f in $FILES
do
	orig="${f/PaletteBilevelAlpha\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-PaletteBilevelAlpha.tsv
done

# calculate difference: PaletteBilevelMatte
echo "DSSIM	File" > dssim-PaletteBilevelMatte.tsv
FILES="PaletteBilevelMatte/300/* PaletteBilevelMatte/600/* PaletteBilevelMatte/1200/*"
for f in $FILES
do
	orig="${f/PaletteBilevelMatte\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-PaletteBilevelMatte.tsv
done

# calculate difference: PaletteAlpha
echo "DSSIM	File" > dssim-PaletteAlpha.tsv
FILES="PaletteAlpha/300/* PaletteAlpha/600/* PaletteAlpha/1200/*"
for f in $FILES
do
	orig="${f/PaletteAlpha\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-PaletteAlpha.tsv
done

# calculate difference: PaletteMatte
echo "DSSIM	File" > dssim-PaletteMatte.tsv
FILES="PaletteMatte/300/* PaletteMatte/600/* PaletteMatte/1200/*"
for f in $FILES
do
	orig="${f/PaletteMatte\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-PaletteMatte.tsv
done

# calculate difference: TrueColorAlpha
echo "DSSIM	File" > dssim-TrueColorAlpha.tsv
FILES="TrueColorAlpha/300/* TrueColorAlpha/600/* TrueColorAlpha/1200/*"
for f in $FILES
do
	orig="${f/TrueColorAlpha\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-TrueColorAlpha.tsv
done

# calculate difference: TrueColorMatte
echo "DSSIM	File" > dssim-TrueColorMatte.tsv
FILES="TrueColorMatte/300/* TrueColorMatte/600/* TrueColorMatte/1200/*"
for f in $FILES
do
	orig="${f/TrueColorMatte\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-TrueColorMatte.tsv
done

# calculate difference: TrueColor
echo "DSSIM	File" > dssim-TrueColor.tsv
FILES="TrueColor/300/* TrueColor/600/* TrueColor/1200/*"
for f in $FILES
do
	orig="${f/TrueColor\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-TrueColor.tsv
done
