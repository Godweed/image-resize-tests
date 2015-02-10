#!/bin/bash

# setup dir/structure
rm -r default B44 B44A BZip DXT1 DXT3 DXT5 Fax Group4 JBIG1 JBIG2 JPEG JPEG2000 Lossless LosslessJPEG LZMA LZW None Piz Pxr24 RLE RunlengthEncoded Zip ZipS
mkdir default B44 B44A BZip DXT1 DXT3 DXT5 Fax Group4 JBIG1 JBIG2 JPEG JPEG2000 Lossless LosslessJPEG LZMA LZW None Piz Pxr24 RLE RunlengthEncoded Zip ZipS
mkdir default/300 B44/300 B44A/300 BZip/300 DXT1/300 DXT3/300 DXT5/300 Fax/300 Group4/300 JBIG1/300 JBIG2/300 JPEG/300 JPEG2000/300 Lossless/300 LosslessJPEG/300 LZMA/300 LZW/300 None/300 Piz/300 Pxr24/300 RLE/300 RunlengthEncoded/300 Zip/300 ZipS/300
mkdir default/600 B44/600 B44A/600 BZip/600 DXT1/600 DXT3/600 DXT5/600 Fax/600 Group4/600 JBIG1/600 JBIG2/600 JPEG/600 JPEG2000/600 Lossless/600 LosslessJPEG/600 LZMA/600 LZW/600 None/600 Piz/600 Pxr24/600 RLE/600 RunlengthEncoded/600 Zip/600 ZipS/600
mkdir default/1200 B44/1200 B44A/1200 BZip/1200 DXT1/1200 DXT3/1200 DXT5/1200 Fax/1200 Group4/1200 JBIG1/1200 JBIG2/1200 JPEG/1200 JPEG2000/1200 Lossless/1200 LosslessJPEG/1200 LZMA/1200 LZW/1200 None/1200 Piz/1200 Pxr24/1200 RLE/1200 RunlengthEncoded/1200 Zip/1200 ZipS/1200

echo "# Test 43: compress" > conclusions.md

# resize
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
mogrify -path default/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

mogrify -path B44/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44 ../assets-optimized/*.jpg
mogrify -path B44/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44 ../assets-optimized/*.png
mogrify -path B44/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44 ../assets-optimized/*.jpg
mogrify -path B44/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44 ../assets-optimized/*.png
mogrify -path B44/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44 ../assets-optimized/*.jpg
mogrify -path B44/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44 ../assets-optimized/*.png

mogrify -path B44A/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44A ../assets-optimized/*.jpg
mogrify -path B44A/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44A ../assets-optimized/*.png
mogrify -path B44A/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44A ../assets-optimized/*.jpg
mogrify -path B44A/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44A ../assets-optimized/*.png
mogrify -path B44A/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44A ../assets-optimized/*.jpg
mogrify -path B44A/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress B44A ../assets-optimized/*.png

mogrify -path BZip/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress BZip ../assets-optimized/*.jpg
mogrify -path BZip/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress BZip ../assets-optimized/*.png
mogrify -path BZip/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress BZip ../assets-optimized/*.jpg
mogrify -path BZip/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress BZip ../assets-optimized/*.png
mogrify -path BZip/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress BZip ../assets-optimized/*.jpg
mogrify -path BZip/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress BZip ../assets-optimized/*.png

mogrify -path DXT1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT1 ../assets-optimized/*.jpg
mogrify -path DXT1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT1 ../assets-optimized/*.png
mogrify -path DXT1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT1 ../assets-optimized/*.jpg
mogrify -path DXT1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT1 ../assets-optimized/*.png
mogrify -path DXT1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT1 ../assets-optimized/*.jpg
mogrify -path DXT1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT1 ../assets-optimized/*.png

mogrify -path DXT3/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT3 ../assets-optimized/*.jpg
mogrify -path DXT3/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT3 ../assets-optimized/*.png
mogrify -path DXT3/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT3 ../assets-optimized/*.jpg
mogrify -path DXT3/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT3 ../assets-optimized/*.png
mogrify -path DXT3/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT3 ../assets-optimized/*.jpg
mogrify -path DXT3/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT3 ../assets-optimized/*.png

mogrify -path DXT5/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT5 ../assets-optimized/*.jpg
mogrify -path DXT5/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT5 ../assets-optimized/*.png
mogrify -path DXT5/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT5 ../assets-optimized/*.jpg
mogrify -path DXT5/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT5 ../assets-optimized/*.png
mogrify -path DXT5/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT5 ../assets-optimized/*.jpg
mogrify -path DXT5/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress DXT5 ../assets-optimized/*.png

mogrify -path Fax/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Fax ../assets-optimized/*.jpg
mogrify -path Fax/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Fax ../assets-optimized/*.png
mogrify -path Fax/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Fax ../assets-optimized/*.jpg
mogrify -path Fax/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Fax ../assets-optimized/*.png
mogrify -path Fax/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Fax ../assets-optimized/*.jpg
mogrify -path Fax/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Fax ../assets-optimized/*.png

mogrify -path Group4/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Group4 ../assets-optimized/*.jpg
mogrify -path Group4/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Group4 ../assets-optimized/*.png
mogrify -path Group4/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Group4 ../assets-optimized/*.jpg
mogrify -path Group4/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Group4 ../assets-optimized/*.png
mogrify -path Group4/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Group4 ../assets-optimized/*.jpg
mogrify -path Group4/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Group4 ../assets-optimized/*.png

mogrify -path JBIG1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG1 ../assets-optimized/*.jpg
mogrify -path JBIG1/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG1 ../assets-optimized/*.png
mogrify -path JBIG1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG1 ../assets-optimized/*.jpg
mogrify -path JBIG1/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG1 ../assets-optimized/*.png
mogrify -path JBIG1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG1 ../assets-optimized/*.jpg
mogrify -path JBIG1/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG1 ../assets-optimized/*.png

mogrify -path JBIG2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG2 ../assets-optimized/*.jpg
mogrify -path JBIG2/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG2 ../assets-optimized/*.png
mogrify -path JBIG2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG2 ../assets-optimized/*.jpg
mogrify -path JBIG2/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG2 ../assets-optimized/*.png
mogrify -path JBIG2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG2 ../assets-optimized/*.jpg
mogrify -path JBIG2/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JBIG2 ../assets-optimized/*.png

mogrify -path JPEG/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG ../assets-optimized/*.jpg
mogrify -path JPEG/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG ../assets-optimized/*.png
mogrify -path JPEG/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG ../assets-optimized/*.jpg
mogrify -path JPEG/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG ../assets-optimized/*.png
mogrify -path JPEG/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG ../assets-optimized/*.jpg
mogrify -path JPEG/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG ../assets-optimized/*.png

mogrify -path JPEG2000/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG2000 ../assets-optimized/*.jpg
mogrify -path JPEG2000/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG2000 ../assets-optimized/*.png
mogrify -path JPEG2000/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG2000 ../assets-optimized/*.jpg
mogrify -path JPEG2000/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG2000 ../assets-optimized/*.png
mogrify -path JPEG2000/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG2000 ../assets-optimized/*.jpg
mogrify -path JPEG2000/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress JPEG2000 ../assets-optimized/*.png

mogrify -path Lossless/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Lossless ../assets-optimized/*.jpg
mogrify -path Lossless/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Lossless ../assets-optimized/*.png
mogrify -path Lossless/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Lossless ../assets-optimized/*.jpg
mogrify -path Lossless/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Lossless ../assets-optimized/*.png
mogrify -path Lossless/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Lossless ../assets-optimized/*.jpg
mogrify -path Lossless/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Lossless ../assets-optimized/*.png

mogrify -path LosslessJPEG/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LosslessJPEG ../assets-optimized/*.jpg
mogrify -path LosslessJPEG/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LosslessJPEG ../assets-optimized/*.png
mogrify -path LosslessJPEG/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LosslessJPEG ../assets-optimized/*.jpg
mogrify -path LosslessJPEG/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LosslessJPEG ../assets-optimized/*.png
mogrify -path LosslessJPEG/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LosslessJPEG ../assets-optimized/*.jpg
mogrify -path LosslessJPEG/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LosslessJPEG ../assets-optimized/*.png

mogrify -path LZMA/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZMA ../assets-optimized/*.jpg
mogrify -path LZMA/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZMA ../assets-optimized/*.png
mogrify -path LZMA/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZMA ../assets-optimized/*.jpg
mogrify -path LZMA/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZMA ../assets-optimized/*.png
mogrify -path LZMA/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZMA ../assets-optimized/*.jpg
mogrify -path LZMA/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZMA ../assets-optimized/*.png

mogrify -path LZW/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZW ../assets-optimized/*.jpg
mogrify -path LZW/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZW ../assets-optimized/*.png
mogrify -path LZW/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZW ../assets-optimized/*.jpg
mogrify -path LZW/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZW ../assets-optimized/*.png
mogrify -path LZW/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZW ../assets-optimized/*.jpg
mogrify -path LZW/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress LZW ../assets-optimized/*.png

mogrify -path None/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress None ../assets-optimized/*.jpg
mogrify -path None/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress None ../assets-optimized/*.png
mogrify -path None/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress None ../assets-optimized/*.jpg
mogrify -path None/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress None ../assets-optimized/*.png
mogrify -path None/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress None ../assets-optimized/*.jpg
mogrify -path None/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress None ../assets-optimized/*.png

mogrify -path Piz/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Piz ../assets-optimized/*.jpg
mogrify -path Piz/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Piz ../assets-optimized/*.png
mogrify -path Piz/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Piz ../assets-optimized/*.jpg
mogrify -path Piz/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Piz ../assets-optimized/*.png
mogrify -path Piz/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Piz ../assets-optimized/*.jpg
mogrify -path Piz/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Piz ../assets-optimized/*.png

mogrify -path Pxr24/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Pxr24 ../assets-optimized/*.jpg
mogrify -path Pxr24/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Pxr24 ../assets-optimized/*.png
mogrify -path Pxr24/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Pxr24 ../assets-optimized/*.jpg
mogrify -path Pxr24/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Pxr24 ../assets-optimized/*.png
mogrify -path Pxr24/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Pxr24 ../assets-optimized/*.jpg
mogrify -path Pxr24/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Pxr24 ../assets-optimized/*.png

mogrify -path RLE/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RLE ../assets-optimized/*.jpg
mogrify -path RLE/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RLE ../assets-optimized/*.png
mogrify -path RLE/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RLE ../assets-optimized/*.jpg
mogrify -path RLE/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RLE ../assets-optimized/*.png
mogrify -path RLE/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RLE ../assets-optimized/*.jpg
mogrify -path RLE/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RLE ../assets-optimized/*.png

mogrify -path RunlengthEncoded/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RunlengthEncoded ../assets-optimized/*.jpg
mogrify -path RunlengthEncoded/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RunlengthEncoded ../assets-optimized/*.png
mogrify -path RunlengthEncoded/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RunlengthEncoded ../assets-optimized/*.jpg
mogrify -path RunlengthEncoded/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RunlengthEncoded ../assets-optimized/*.png
mogrify -path RunlengthEncoded/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RunlengthEncoded ../assets-optimized/*.jpg
mogrify -path RunlengthEncoded/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress RunlengthEncoded ../assets-optimized/*.png

mogrify -path Zip/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Zip ../assets-optimized/*.jpg
mogrify -path Zip/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Zip ../assets-optimized/*.png
mogrify -path Zip/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Zip ../assets-optimized/*.jpg
mogrify -path Zip/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Zip ../assets-optimized/*.png
mogrify -path Zip/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Zip ../assets-optimized/*.jpg
mogrify -path Zip/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress Zip ../assets-optimized/*.png

mogrify -path ZipS/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress ZipS ../assets-optimized/*.jpg
mogrify -path ZipS/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress ZipS ../assets-optimized/*.png
mogrify -path ZipS/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress ZipS ../assets-optimized/*.jpg
mogrify -path ZipS/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress ZipS ../assets-optimized/*.png
mogrify -path ZipS/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress ZipS ../assets-optimized/*.jpg
mogrify -path ZipS/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none -compress ZipS ../assets-optimized/*.png


# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d B44 -q
imageoptim -d B44 -q
imageoptim -d B44 -q

imageoptim -d B44A -q
imageoptim -d B44A -q
imageoptim -d B44A -q

imageoptim -d BZip -q
imageoptim -d BZip -q
imageoptim -d BZip -q

imageoptim -d DXT1 -q
imageoptim -d DXT1 -q
imageoptim -d DXT1 -q

imageoptim -d DXT3 -q
imageoptim -d DXT3 -q
imageoptim -d DXT3 -q

imageoptim -d DXT5 -q
imageoptim -d DXT5 -q
imageoptim -d DXT5 -q

imageoptim -d Fax -q
imageoptim -d Fax -q
imageoptim -d Fax -q

imageoptim -d Group4 -q
imageoptim -d Group4 -q
imageoptim -d Group4 -q

imageoptim -d JBIG1 -q
imageoptim -d JBIG1 -q
imageoptim -d JBIG1 -q

imageoptim -d JBIG2 -q
imageoptim -d JBIG2 -q
imageoptim -d JBIG2 -q

imageoptim -d JPEG -q
imageoptim -d JPEG -q
imageoptim -d JPEG -q

imageoptim -d JPEG2000 -q
imageoptim -d JPEG2000 -q
imageoptim -d JPEG2000 -q

imageoptim -d Lossless -q
imageoptim -d Lossless -q
imageoptim -d Lossless -q

imageoptim -d LosslessJPEG -q
imageoptim -d LosslessJPEG -q
imageoptim -d LosslessJPEG -q

imageoptim -d LZMA -q
imageoptim -d LZMA -q
imageoptim -d LZMA -q

imageoptim -d LZW -q
imageoptim -d LZW -q
imageoptim -d LZW -q

imageoptim -d None -q
imageoptim -d None -q
imageoptim -d None -q

imageoptim -d Piz -q
imageoptim -d Piz -q
imageoptim -d Piz -q

imageoptim -d Pxr24 -q
imageoptim -d Pxr24 -q
imageoptim -d Pxr24 -q

imageoptim -d RLE -q
imageoptim -d RLE -q
imageoptim -d RLE -q

imageoptim -d RunlengthEncoded -q
imageoptim -d RunlengthEncoded -q
imageoptim -d RunlengthEncoded -q

imageoptim -d Zip -q
imageoptim -d Zip -q
imageoptim -d Zip -q

imageoptim -d ZipS -q
imageoptim -d ZipS -q
imageoptim -d ZipS -q


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

# calculate difference: B44
echo "DSSIM	File" > dssim-B44.tsv
FILES="B44/300/* B44/600/* B44/1200/*"
for f in $FILES
do
	orig="${f/B44\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-B44.tsv
done

# calculate difference: B44A
echo "DSSIM	File" > dssim-B44A.tsv
FILES="B44A/300/* B44A/600/* B44A/1200/*"
for f in $FILES
do
	orig="${f/B44A\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-B44A.tsv
done

# calculate difference: BZip
echo "DSSIM	File" > dssim-BZip.tsv
FILES="BZip/300/* BZip/600/* BZip/1200/*"
for f in $FILES
do
	orig="${f/BZip\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-BZip.tsv
done

# calculate difference: DXT1
echo "DSSIM	File" > dssim-DXT1.tsv
FILES="DXT1/300/* DXT1/600/* DXT1/1200/*"
for f in $FILES
do
	orig="${f/DXT1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-DXT1.tsv
done

# calculate difference: DXT3
echo "DSSIM	File" > dssim-DXT3.tsv
FILES="DXT3/300/* DXT3/600/* DXT3/1200/*"
for f in $FILES
do
	orig="${f/DXT3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-DXT3.tsv
done

# calculate difference: DXT5
echo "DSSIM	File" > dssim-DXT5.tsv
FILES="DXT5/300/* DXT5/600/* DXT5/1200/*"
for f in $FILES
do
	orig="${f/DXT5\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-DXT5.tsv
done

# calculate difference: Fax
echo "DSSIM	File" > dssim-Fax.tsv
FILES="Fax/300/* Fax/600/* Fax/1200/*"
for f in $FILES
do
	orig="${f/Fax\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Fax.tsv
done

# calculate difference: Group4
echo "DSSIM	File" > dssim-Group4.tsv
FILES="Group4/300/* Group4/600/* Group4/1200/*"
for f in $FILES
do
	orig="${f/Group4\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Group4.tsv
done

# calculate difference: JBIG1
echo "DSSIM	File" > dssim-JBIG1.tsv
FILES="JBIG1/300/* JBIG1/600/* JBIG1/1200/*"
for f in $FILES
do
	orig="${f/JBIG1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-JBIG1.tsv
done

# calculate difference: JBIG2
echo "DSSIM	File" > dssim-JBIG2.tsv
FILES="JBIG2/300/* JBIG2/600/* JBIG2/1200/*"
for f in $FILES
do
	orig="${f/JBIG2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-JBIG2.tsv
done

# calculate difference: JPEG
echo "DSSIM	File" > dssim-JPEG.tsv
FILES="JPEG/300/* JPEG/600/* JPEG/1200/*"
for f in $FILES
do
	orig="${f/JPEG\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-JPEG.tsv
done

# calculate difference: JPEG2000
echo "DSSIM	File" > dssim-JPEG2000.tsv
FILES="JPEG2000/300/* JPEG2000/600/* JPEG2000/1200/*"
for f in $FILES
do
	orig="${f/JPEG2000\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-JPEG2000.tsv
done

# calculate difference: Lossless
echo "DSSIM	File" > dssim-Lossless.tsv
FILES="Lossless/300/* Lossless/600/* Lossless/1200/*"
for f in $FILES
do
	orig="${f/Lossless\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Lossless.tsv
done

# calculate difference: LosslessJPEG
echo "DSSIM	File" > dssim-LosslessJPEG.tsv
FILES="LosslessJPEG/300/* LosslessJPEG/600/* LosslessJPEG/1200/*"
for f in $FILES
do
	orig="${f/LosslessJPEG\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-LosslessJPEG.tsv
done

# calculate difference: LZMA
echo "DSSIM	File" > dssim-LZMA.tsv
FILES="LZMA/300/* LZMA/600/* LZMA/1200/*"
for f in $FILES
do
	orig="${f/LZMA\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-LZMA.tsv
done

# calculate difference: LZW
echo "DSSIM	File" > dssim-LZW.tsv
FILES="LZW/300/* LZW/600/* LZW/1200/*"
for f in $FILES
do
	orig="${f/LZW\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-LZW.tsv
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

# calculate difference: Piz
echo "DSSIM	File" > dssim-Piz.tsv
FILES="Piz/300/* Piz/600/* Piz/1200/*"
for f in $FILES
do
	orig="${f/Piz\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Piz.tsv
done

# calculate difference: Pxr24
echo "DSSIM	File" > dssim-Pxr24.tsv
FILES="Pxr24/300/* Pxr24/600/* Pxr24/1200/*"
for f in $FILES
do
	orig="${f/Pxr24\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Pxr24.tsv
done

# calculate difference: RLE
echo "DSSIM	File" > dssim-RLE.tsv
FILES="RLE/300/* RLE/600/* RLE/1200/*"
for f in $FILES
do
	orig="${f/RLE\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-RLE.tsv
done

# calculate difference: RunlengthEncoded
echo "DSSIM	File" > dssim-RunlengthEncoded.tsv
FILES="RunlengthEncoded/300/* RunlengthEncoded/600/* RunlengthEncoded/1200/*"
for f in $FILES
do
	orig="${f/RunlengthEncoded\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-RunlengthEncoded.tsv
done

# calculate difference: Zip
echo "DSSIM	File" > dssim-Zip.tsv
FILES="Zip/300/* Zip/600/* Zip/1200/*"
for f in $FILES
do
	orig="${f/Zip\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Zip.tsv
done

# calculate difference: ZipS
echo "DSSIM	File" > dssim-ZipS.tsv
FILES="ZipS/300/* ZipS/600/* ZipS/1200/*"
for f in $FILES
do
	orig="${f/ZipS\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-ZipS.tsv
done
