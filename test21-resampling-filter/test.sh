#!/bin/bash

# setup dir/structure
rm -r Bartlett Bessel Blackman Bohman Box Catrom Cosine Cubic Gaussian Hamming Hann Hanning Hermite Jinc Kaiser Lagrange Lanczos Lanczos2 Lanczos2Sharp LanczosRadius LanczosSharp Mitchell none Parzen Point Quadratic Robidoux RobidouxSharp Sinc SincFast Spline Triangle Welch Welsh
mkdir Bartlett Bessel Blackman Bohman Box Catrom Cosine Cubic Gaussian Hamming Hann Hanning Hermite Jinc Kaiser Lagrange Lanczos Lanczos2 Lanczos2Sharp LanczosRadius LanczosSharp Mitchell none Parzen Point Quadratic Robidoux RobidouxSharp Sinc SincFast Spline Triangle Welch Welsh
mkdir Bartlett/300 Bessel/300 Blackman/300 Bohman/300 Box/300 Catrom/300 Cosine/300 Cubic/300 Gaussian/300 Hamming/300 Hann/300 Hanning/300 Hermite/300 Jinc/300 Kaiser/300 Lagrange/300 Lanczos/300 Lanczos2/300 Lanczos2Sharp/300 LanczosRadius/300 LanczosSharp/300 Mitchell/300 none/300 Parzen/300 Point/300 Quadratic/300 Robidoux/300 RobidouxSharp/300 Sinc/300 SincFast/300 Spline/300 Triangle/300 Welch/300 Welsh/300
mkdir Bartlett/600 Bessel/600 Blackman/600 Bohman/600 Box/600 Catrom/600 Cosine/600 Cubic/600 Gaussian/600 Hamming/600 Hann/600 Hanning/600 Hermite/600 Jinc/600 Kaiser/600 Lagrange/600 Lanczos/600 Lanczos2/600 Lanczos2Sharp/600 LanczosRadius/600 LanczosSharp/600 Mitchell/600 none/600 Parzen/600 Point/600 Quadratic/600 Robidoux/600 RobidouxSharp/600 Sinc/600 SincFast/600 Spline/600 Triangle/600 Welch/600 Welsh/600
mkdir Bartlett/1200 Bessel/1200 Blackman/1200 Bohman/1200 Box/1200 Catrom/1200 Cosine/1200 Cubic/1200 Gaussian/1200 Hamming/1200 Hann/1200 Hanning/1200 Hermite/1200 Jinc/1200 Kaiser/1200 Lagrange/1200 Lanczos/1200 Lanczos2/1200 Lanczos2Sharp/1200 LanczosRadius/1200 LanczosSharp/1200 Mitchell/1200 none/1200 Parzen/1200 Point/1200 Quadratic/1200 Robidoux/1200 RobidouxSharp/1200 Sinc/1200 SincFast/1200 Spline/1200 Triangle/1200 Welch/1200 Welsh/1200

echo "# Test 21: resampling filter" > conclusions.md

# resize
mogrify -path Bartlett/300 -filter Bartlett -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bartlett/300 -filter Bartlett -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Bartlett/600 -filter Bartlett -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bartlett/600 -filter Bartlett -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Bartlett/1200 -filter Bartlett -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bartlett/1200 -filter Bartlett -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Bessel/300 -filter Bessel -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bessel/300 -filter Bessel -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Bessel/600 -filter Bessel -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bessel/600 -filter Bessel -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Bessel/1200 -filter Bessel -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bessel/1200 -filter Bessel -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Blackman/300 -filter Blackman -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Blackman/300 -filter Blackman -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Blackman/600 -filter Blackman -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Blackman/600 -filter Blackman -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Blackman/1200 -filter Blackman -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Blackman/1200 -filter Blackman -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Bohman/300 -filter Bohman -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bohman/300 -filter Bohman -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Bohman/600 -filter Bohman -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bohman/600 -filter Bohman -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Bohman/1200 -filter Bohman -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Bohman/1200 -filter Bohman -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Box/300 -filter Box -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Box/300 -filter Box -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Box/600 -filter Box -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Box/600 -filter Box -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Box/1200 -filter Box -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Box/1200 -filter Box -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Catrom/300 -filter Catrom -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Catrom/300 -filter Catrom -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Catrom/600 -filter Catrom -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Catrom/600 -filter Catrom -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Catrom/1200 -filter Catrom -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Catrom/1200 -filter Catrom -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Cosine/300 -filter Cosine -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Cosine/300 -filter Cosine -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Cosine/600 -filter Cosine -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Cosine/600 -filter Cosine -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Cosine/1200 -filter Cosine -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Cosine/1200 -filter Cosine -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Cubic/300 -filter Cubic -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Cubic/300 -filter Cubic -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Cubic/600 -filter Cubic -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Cubic/600 -filter Cubic -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Cubic/1200 -filter Cubic -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Cubic/1200 -filter Cubic -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Gaussian/300 -filter Gaussian -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Gaussian/300 -filter Gaussian -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Gaussian/600 -filter Gaussian -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Gaussian/600 -filter Gaussian -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Gaussian/1200 -filter Gaussian -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Gaussian/1200 -filter Gaussian -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Hamming/300 -filter Hamming -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hamming/300 -filter Hamming -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hamming/600 -filter Hamming -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hamming/600 -filter Hamming -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hamming/1200 -filter Hamming -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hamming/1200 -filter Hamming -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Hann/300 -filter Hann -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hann/300 -filter Hann -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hann/600 -filter Hann -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hann/600 -filter Hann -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hann/1200 -filter Hann -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hann/1200 -filter Hann -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Hanning/300 -filter Hanning -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hanning/300 -filter Hanning -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hanning/600 -filter Hanning -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hanning/600 -filter Hanning -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hanning/1200 -filter Hanning -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hanning/1200 -filter Hanning -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Hermite/300 -filter Hermite -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hermite/300 -filter Hermite -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hermite/600 -filter Hermite -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hermite/600 -filter Hermite -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Hermite/1200 -filter Hermite -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Hermite/1200 -filter Hermite -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Jinc/300 -filter Jinc -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Jinc/300 -filter Jinc -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Jinc/600 -filter Jinc -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Jinc/600 -filter Jinc -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Jinc/1200 -filter Jinc -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Jinc/1200 -filter Jinc -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Kaiser/300 -filter Kaiser -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Kaiser/300 -filter Kaiser -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Kaiser/600 -filter Kaiser -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Kaiser/600 -filter Kaiser -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Kaiser/1200 -filter Kaiser -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Kaiser/1200 -filter Kaiser -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Lagrange/300 -filter Lagrange -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lagrange/300 -filter Lagrange -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lagrange/600 -filter Lagrange -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lagrange/600 -filter Lagrange -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lagrange/1200 -filter Lagrange -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lagrange/1200 -filter Lagrange -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Lanczos/300 -filter Lanczos -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos/300 -filter Lanczos -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lanczos/600 -filter Lanczos -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos/600 -filter Lanczos -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lanczos/1200 -filter Lanczos -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos/1200 -filter Lanczos -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Lanczos2/300 -filter Lanczos2 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos2/300 -filter Lanczos2 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lanczos2/600 -filter Lanczos2 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos2/600 -filter Lanczos2 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lanczos2/1200 -filter Lanczos2 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos2/1200 -filter Lanczos2 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Lanczos2Sharp/300 -filter Lanczos2Sharp -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos2Sharp/300 -filter Lanczos2Sharp -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lanczos2Sharp/600 -filter Lanczos2Sharp -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos2Sharp/600 -filter Lanczos2Sharp -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Lanczos2Sharp/1200 -filter Lanczos2Sharp -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Lanczos2Sharp/1200 -filter Lanczos2Sharp -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path LanczosRadius/300 -filter LanczosRadius -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path LanczosRadius/300 -filter LanczosRadius -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path LanczosRadius/600 -filter LanczosRadius -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path LanczosRadius/600 -filter LanczosRadius -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path LanczosRadius/1200 -filter LanczosRadius -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path LanczosRadius/1200 -filter LanczosRadius -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path LanczosSharp/300 -filter LanczosSharp -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path LanczosSharp/300 -filter LanczosSharp -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path LanczosSharp/600 -filter LanczosSharp -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path LanczosSharp/600 -filter LanczosSharp -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path LanczosSharp/1200 -filter LanczosSharp -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path LanczosSharp/1200 -filter LanczosSharp -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Mitchell/300 -filter Mitchell -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Mitchell/300 -filter Mitchell -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Mitchell/600 -filter Mitchell -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Mitchell/600 -filter Mitchell -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Mitchell/1200 -filter Mitchell -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Mitchell/1200 -filter Mitchell -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path none/300 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/300 -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/600 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/600 -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path none/1200 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path none/1200 -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Parzen/300 -filter Parzen -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Parzen/300 -filter Parzen -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Parzen/600 -filter Parzen -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Parzen/600 -filter Parzen -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Parzen/1200 -filter Parzen -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Parzen/1200 -filter Parzen -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Point/300 -filter Point -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Point/300 -filter Point -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Point/600 -filter Point -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Point/600 -filter Point -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Point/1200 -filter Point -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Point/1200 -filter Point -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Quadratic/300 -filter Quadratic -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Quadratic/300 -filter Quadratic -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Quadratic/600 -filter Quadratic -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Quadratic/600 -filter Quadratic -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Quadratic/1200 -filter Quadratic -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Quadratic/1200 -filter Quadratic -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Robidoux/300 -filter Robidoux -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Robidoux/300 -filter Robidoux -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Robidoux/600 -filter Robidoux -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Robidoux/600 -filter Robidoux -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Robidoux/1200 -filter Robidoux -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Robidoux/1200 -filter Robidoux -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path RobidouxSharp/300 -filter RobidouxSharp -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path RobidouxSharp/300 -filter RobidouxSharp -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path RobidouxSharp/600 -filter RobidouxSharp -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path RobidouxSharp/600 -filter RobidouxSharp -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path RobidouxSharp/1200 -filter RobidouxSharp -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path RobidouxSharp/1200 -filter RobidouxSharp -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Sinc/300 -filter Sinc -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Sinc/300 -filter Sinc -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Sinc/600 -filter Sinc -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Sinc/600 -filter Sinc -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Sinc/1200 -filter Sinc -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Sinc/1200 -filter Sinc -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path SincFast/300 -filter SincFast -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path SincFast/300 -filter SincFast -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path SincFast/600 -filter SincFast -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path SincFast/600 -filter SincFast -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path SincFast/1200 -filter SincFast -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path SincFast/1200 -filter SincFast -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Spline/300 -filter Spline -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Spline/300 -filter Spline -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Spline/600 -filter Spline -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Spline/600 -filter Spline -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Spline/1200 -filter Spline -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Spline/1200 -filter Spline -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Triangle/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Triangle/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Triangle/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Triangle/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Triangle/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Triangle/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Welch/300 -filter Welch -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Welch/300 -filter Welch -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Welch/600 -filter Welch -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Welch/600 -filter Welch -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Welch/1200 -filter Welch -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Welch/1200 -filter Welch -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path Welsh/300 -filter Welsh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Welsh/300 -filter Welsh -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Welsh/600 -filter Welsh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Welsh/600 -filter Welsh -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path Welsh/1200 -filter Welsh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path Welsh/1200 -filter Welsh -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: Bartlett
echo "DSSIM	File" > dssim-Bartlett.tsv
FILES="Bartlett/300/* Bartlett/600/* Bartlett/1200/*"
for f in $FILES
do
	orig="${f/Bartlett\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Bartlett.tsv
done


# calculate difference: Bessel
echo "DSSIM	File" > dssim-Bessel.tsv
FILES="Bessel/300/* Bessel/600/* Bessel/1200/*"
for f in $FILES
do
	orig="${f/Bessel\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Bessel.tsv
done


# calculate difference: Blackman
echo "DSSIM	File" > dssim-Blackman.tsv
FILES="Blackman/300/* Blackman/600/* Blackman/1200/*"
for f in $FILES
do
	orig="${f/Blackman\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Blackman.tsv
done


# calculate difference: Bohman
echo "DSSIM	File" > dssim-Bohman.tsv
FILES="Bohman/300/* Bohman/600/* Bohman/1200/*"
for f in $FILES
do
	orig="${f/Bohman\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Bohman.tsv
done


# calculate difference: Box
echo "DSSIM	File" > dssim-Box.tsv
FILES="Box/300/* Box/600/* Box/1200/*"
for f in $FILES
do
	orig="${f/Box\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Box.tsv
done


# calculate difference: Catrom
echo "DSSIM	File" > dssim-Catrom.tsv
FILES="Catrom/300/* Catrom/600/* Catrom/1200/*"
for f in $FILES
do
	orig="${f/Catrom\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Catrom.tsv
done


# calculate difference: Cosine
echo "DSSIM	File" > dssim-Cosine.tsv
FILES="Cosine/300/* Cosine/600/* Cosine/1200/*"
for f in $FILES
do
	orig="${f/Cosine\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Cosine.tsv
done


# calculate difference: Cubic
echo "DSSIM	File" > dssim-Cubic.tsv
FILES="Cubic/300/* Cubic/600/* Cubic/1200/*"
for f in $FILES
do
	orig="${f/Cubic\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Cubic.tsv
done


# calculate difference: Gaussian
echo "DSSIM	File" > dssim-Gaussian.tsv
FILES="Gaussian/300/* Gaussian/600/* Gaussian/1200/*"
for f in $FILES
do
	orig="${f/Gaussian\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Gaussian.tsv
done


# calculate difference: Hamming
echo "DSSIM	File" > dssim-Hamming.tsv
FILES="Hamming/300/* Hamming/600/* Hamming/1200/*"
for f in $FILES
do
	orig="${f/Hamming\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Hamming.tsv
done


# calculate difference: Hann
echo "DSSIM	File" > dssim-Hann.tsv
FILES="Hann/300/* Hann/600/* Hann/1200/*"
for f in $FILES
do
	orig="${f/Hann\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Hann.tsv
done


# calculate difference: Hanning
echo "DSSIM	File" > dssim-Hanning.tsv
FILES="Hanning/300/* Hanning/600/* Hanning/1200/*"
for f in $FILES
do
	orig="${f/Hanning\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Hanning.tsv
done


# calculate difference: Hermite
echo "DSSIM	File" > dssim-Hermite.tsv
FILES="Hermite/300/* Hermite/600/* Hermite/1200/*"
for f in $FILES
do
	orig="${f/Hermite\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Hermite.tsv
done


# calculate difference: Jinc
echo "DSSIM	File" > dssim-Jinc.tsv
FILES="Jinc/300/* Jinc/600/* Jinc/1200/*"
for f in $FILES
do
	orig="${f/Jinc\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Jinc.tsv
done


# calculate difference: Kaiser
echo "DSSIM	File" > dssim-Kaiser.tsv
FILES="Kaiser/300/* Kaiser/600/* Kaiser/1200/*"
for f in $FILES
do
	orig="${f/Kaiser\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Kaiser.tsv
done


# calculate difference: Lagrange
echo "DSSIM	File" > dssim-Lagrange.tsv
FILES="Lagrange/300/* Lagrange/600/* Lagrange/1200/*"
for f in $FILES
do
	orig="${f/Lagrange\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Lagrange.tsv
done


# calculate difference: Lanczos
echo "DSSIM	File" > dssim-Lanczos.tsv
FILES="Lanczos/300/* Lanczos/600/* Lanczos/1200/*"
for f in $FILES
do
	orig="${f/Lanczos\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Lanczos.tsv
done


# calculate difference: Lanczos2
echo "DSSIM	File" > dssim-Lanczos2.tsv
FILES="Lanczos2/300/* Lanczos2/600/* Lanczos2/1200/*"
for f in $FILES
do
	orig="${f/Lanczos2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Lanczos2.tsv
done


# calculate difference: Lanczos2Sharp
echo "DSSIM	File" > dssim-Lanczos2Sharp.tsv
FILES="Lanczos2Sharp/300/* Lanczos2Sharp/600/* Lanczos2Sharp/1200/*"
for f in $FILES
do
	orig="${f/Lanczos2Sharp\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Lanczos2Sharp.tsv
done


# calculate difference: LanczosRadius
echo "DSSIM	File" > dssim-LanczosRadius.tsv
FILES="LanczosRadius/300/* LanczosRadius/600/* LanczosRadius/1200/*"
for f in $FILES
do
	orig="${f/LanczosRadius\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-LanczosRadius.tsv
done


# calculate difference: LanczosSharp
echo "DSSIM	File" > dssim-LanczosSharp.tsv
FILES="LanczosSharp/300/* LanczosSharp/600/* LanczosSharp/1200/*"
for f in $FILES
do
	orig="${f/LanczosSharp\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-LanczosSharp.tsv
done


# calculate difference: Mitchell
echo "DSSIM	File" > dssim-Mitchell.tsv
FILES="Mitchell/300/* Mitchell/600/* Mitchell/1200/*"
for f in $FILES
do
	orig="${f/Mitchell\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Mitchell.tsv
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


# calculate difference: Parzen
echo "DSSIM	File" > dssim-Parzen.tsv
FILES="Parzen/300/* Parzen/600/* Parzen/1200/*"
for f in $FILES
do
	orig="${f/Parzen\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Parzen.tsv
done


# calculate difference: Point
echo "DSSIM	File" > dssim-Point.tsv
FILES="Point/300/* Point/600/* Point/1200/*"
for f in $FILES
do
	orig="${f/Point\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Point.tsv
done


# calculate difference: Quadratic
echo "DSSIM	File" > dssim-Quadratic.tsv
FILES="Quadratic/300/* Quadratic/600/* Quadratic/1200/*"
for f in $FILES
do
	orig="${f/Quadratic\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Quadratic.tsv
done


# calculate difference: Robidoux
echo "DSSIM	File" > dssim-Robidoux.tsv
FILES="Robidoux/300/* Robidoux/600/* Robidoux/1200/*"
for f in $FILES
do
	orig="${f/Robidoux\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Robidoux.tsv
done


# calculate difference: RobidouxSharp
echo "DSSIM	File" > dssim-RobidouxSharp.tsv
FILES="RobidouxSharp/300/* RobidouxSharp/600/* RobidouxSharp/1200/*"
for f in $FILES
do
	orig="${f/RobidouxSharp\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-RobidouxSharp.tsv
done


# calculate difference: Sinc
echo "DSSIM	File" > dssim-Sinc.tsv
FILES="Sinc/300/* Sinc/600/* Sinc/1200/*"
for f in $FILES
do
	orig="${f/Sinc\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Sinc.tsv
done


# calculate difference: SincFast
echo "DSSIM	File" > dssim-SincFast.tsv
FILES="SincFast/300/* SincFast/600/* SincFast/1200/*"
for f in $FILES
do
	orig="${f/SincFast\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-SincFast.tsv
done


# calculate difference: Spline
echo "DSSIM	File" > dssim-Spline.tsv
FILES="Spline/300/* Spline/600/* Spline/1200/*"
for f in $FILES
do
	orig="${f/Spline\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Spline.tsv
done


# calculate difference: Triangle
echo "DSSIM	File" > dssim-Triangle.tsv
FILES="Triangle/300/* Triangle/600/* Triangle/1200/*"
for f in $FILES
do
	orig="${f/Triangle\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Triangle.tsv
done


# calculate difference: Welch
echo "DSSIM	File" > dssim-Welch.tsv
FILES="Welch/300/* Welch/600/* Welch/1200/*"
for f in $FILES
do
	orig="${f/Welch\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Welch.tsv
done


# calculate difference: Welsh
echo "DSSIM	File" > dssim-Welsh.tsv
FILES="Welsh/300/* Welsh/600/* Welsh/1200/*"
for f in $FILES
do
	orig="${f/Welsh\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-Welsh.tsv
done
