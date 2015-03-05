#!/bin/bash

# setup dir/structure
rm -r test wordpress1 wordpress2 drupal perch gruntri1 gruntri2 kokentiny kokensmall kokenmedium kokenxlarge kokenhuge typo3-1 typo3-2 codeigniter imagickal craft
mkdir test wordpress1 wordpress2 drupal perch gruntri1 gruntri2 kokentiny kokensmall kokenmedium kokenxlarge kokenhuge typo3-1 typo3-2 codeigniter imagickal craft
mkdir test/300 wordpress1/300 wordpress2/300 drupal/300 perch/300 gruntri1/300 gruntri2/300 kokentiny/300 kokensmall/300 kokenmedium/300 kokenxlarge/300 kokenhuge/300 typo3-1/300 typo3-2/300 codeigniter/300 imagickal/300 craft/300
mkdir test/600 wordpress1/600 wordpress2/600 drupal/600 perch/600 gruntri1/600 gruntri2/600 kokentiny/600 kokensmall/600 kokenmedium/600 kokenxlarge/600 kokenhuge/600 typo3-1/600 typo3-2/600 codeigniter/600 imagickal/600 craft/600
mkdir test/1200 wordpress1/1200 wordpress2/1200 drupal/1200 perch/1200 gruntri1/1200 gruntri2/1200 kokentiny/1200 kokensmall/1200 kokenmedium/1200 kokenxlarge/1200 kokenhuge/1200 typo3-1/1200 typo3-2/1200 codeigniter/1200 imagickal/1200 craft/1200

echo "# Test 38: CMS comparison" > conclusions.md

# resize
mogrify -path test/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 +dither -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path test/300 -filter Triangle -thumbnail 300 -unsharp 0.25x0.25+9.00+0.065 +dither -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path test/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 +dither -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path test/600 -filter Triangle -thumbnail 600 -unsharp 0.25x0.25+9.00+0.065 +dither -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png
mogrify -path test/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 +dither -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.jpg
mogrify -path test/1200 -filter Triangle -thumbnail 1200 -unsharp 0.25x0.25+9.00+0.065 +dither -posterize 136 -background Black -alpha Background -quality 82 -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip ../assets-unoptimized/*.png

mogrify -path wordpress1/300 -scale 300 ../assets-unoptimized/*.jpg
mogrify -path wordpress1/300 -scale 300 ../assets-unoptimized/*.png
mogrify -path wordpress1/600 -scale 600 ../assets-unoptimized/*.jpg
mogrify -path wordpress1/600 -scale 600 ../assets-unoptimized/*.png
mogrify -path wordpress1/1200 -scale 1200 ../assets-unoptimized/*.jpg
mogrify -path wordpress1/1200 -scale 1200 ../assets-unoptimized/*.png

mogrify -path wordpress2/300 -thumbnail 300 ../assets-unoptimized/*.jpg
mogrify -path wordpress2/300 -thumbnail 300 ../assets-unoptimized/*.png
mogrify -path wordpress2/600 -thumbnail 600 ../assets-unoptimized/*.jpg
mogrify -path wordpress2/600 -thumbnail 600 ../assets-unoptimized/*.png
mogrify -path wordpress2/1200 -thumbnail 1200 ../assets-unoptimized/*.jpg
mogrify -path wordpress2/1200 -thumbnail 1200 ../assets-unoptimized/*.png

mogrify -path drupal/300 -resize 300 ../assets-unoptimized/*.jpg
mogrify -path drupal/300 -resize 300 ../assets-unoptimized/*.png
mogrify -path drupal/600 -resize 600 ../assets-unoptimized/*.jpg
mogrify -path drupal/600 -resize 600 ../assets-unoptimized/*.png
mogrify -path drupal/1200 -resize 1200 ../assets-unoptimized/*.jpg
mogrify -path drupal/1200 -resize 1200 ../assets-unoptimized/*.png

mogrify -path perch/300 -thumbnail 300 -unsharp 0x0.4+2+0.05 -interlace plane ../assets-unoptimized/*.jpg
mogrify -path perch/300 -thumbnail 300 -unsharp 0x0.4+2+0.05 -interlace plane ../assets-unoptimized/*.png
mogrify -path perch/600 -thumbnail 600 -unsharp 0x0.4+2+0.05 -interlace plane ../assets-unoptimized/*.jpg
mogrify -path perch/600 -thumbnail 600 -unsharp 0x0.4+2+0.05 -interlace plane ../assets-unoptimized/*.png
mogrify -path perch/1200 -thumbnail 1200 -unsharp 0x0.4+2+0.05 -interlace plane ../assets-unoptimized/*.jpg
mogrify -path perch/1200 -thumbnail 1200 -unsharp 0x0.4+2+0.05 -interlace plane ../assets-unoptimized/*.png

mogrify -path gruntri1/300 -resize 300 -quality 100 ../assets-unoptimized/*.jpg
mogrify -path gruntri1/300 -resize 300 -quality 100 ../assets-unoptimized/*.png
mogrify -path gruntri1/600 -resize 600 -quality 100 ../assets-unoptimized/*.jpg
mogrify -path gruntri1/600 -resize 600 -quality 100 ../assets-unoptimized/*.png
mogrify -path gruntri1/1200 -resize 1200 -quality 100 ../assets-unoptimized/*.jpg
mogrify -path gruntri1/1200 -resize 1200 -quality 100 ../assets-unoptimized/*.png

mogrify -path gruntri2/300 -filter Triangle -resize 300 -quality 82 ../assets-unoptimized/*.jpg
mogrify -path gruntri2/300 -filter Triangle -resize 300 -quality 82 ../assets-unoptimized/*.png
mogrify -path gruntri2/600 -filter Triangle -resize 600 -quality 82 ../assets-unoptimized/*.jpg
mogrify -path gruntri2/600 -filter Triangle -resize 600 -quality 82 ../assets-unoptimized/*.png
mogrify -path gruntri2/1200 -filter Triangle -resize 1200 -quality 82 ../assets-unoptimized/*.jpg
mogrify -path gruntri2/1200 -filter Triangle -resize 1200 -quality 82 ../assets-unoptimized/*.png

mogrify -path kokentiny/300 -resize 300 -quality 80 -sharpen 0x0.91+0.7+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokentiny/300 -resize 300 -quality 80 -sharpen 0x0.91+0.7+0.05 ../assets-unoptimized/*.png
mogrify -path kokentiny/600 -resize 600 -quality 80 -sharpen 0x0.91+0.7+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokentiny/600 -resize 600 -quality 80 -sharpen 0x0.91+0.7+0.05 ../assets-unoptimized/*.png
mogrify -path kokentiny/1200 -resize 1200 -quality 80 -sharpen 0x0.91+0.7+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokentiny/1200 -resize 1200 -quality 80 -sharpen 0x0.91+0.7+0.05 ../assets-unoptimized/*.png

mogrify -path kokensmall/300 -resize 300 -quality 80 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokensmall/300 -resize 300 -quality 80 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.png
mogrify -path kokensmall/600 -resize 600 -quality 80 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokensmall/600 -resize 600 -quality 80 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.png
mogrify -path kokensmall/1200 -resize 1200 -quality 80 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokensmall/1200 -resize 1200 -quality 80 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.png

mogrify -path kokenmedium/300 -resize 300 -quality 85 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenmedium/300 -resize 300 -quality 85 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.png
mogrify -path kokenmedium/600 -resize 600 -quality 85 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenmedium/600 -resize 600 -quality 85 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.png
mogrify -path kokenmedium/1200 -resize 1200 -quality 85 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenmedium/1200 -resize 1200 -quality 85 -sharpen 0x0.78+0.6+0.05 ../assets-unoptimized/*.png

# medium, mediumlarge, and large have the same settings

mogrify -path kokenxlarge/300 -resize 300 -quality 90 -sharpen 0x0.39+0.3+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenxlarge/300 -resize 300 -quality 90 -sharpen 0x0.39+0.3+0.05 ../assets-unoptimized/*.png
mogrify -path kokenxlarge/600 -resize 600 -quality 90 -sharpen 0x0.39+0.3+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenxlarge/600 -resize 600 -quality 90 -sharpen 0x0.39+0.3+0.05 ../assets-unoptimized/*.png
mogrify -path kokenxlarge/1200 -resize 1200 -quality 90 -sharpen 0x0.39+0.3+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenxlarge/1200 -resize 1200 -quality 90 -sharpen 0x0.39+0.3+0.05 ../assets-unoptimized/*.png

mogrify -path kokenhuge/300 -resize 300 -quality 90 -sharpen 0x0+0+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenhuge/300 -resize 300 -quality 90 -sharpen 0x0+0+0.05 ../assets-unoptimized/*.png
mogrify -path kokenhuge/600 -resize 600 -quality 90 -sharpen 0x0+0+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenhuge/600 -resize 600 -quality 90 -sharpen 0x0+0+0.05 ../assets-unoptimized/*.png
mogrify -path kokenhuge/1200 -resize 1200 -quality 90 -sharpen 0x0+0+0.05 ../assets-unoptimized/*.jpg
mogrify -path kokenhuge/1200 -resize 1200 -quality 90 -sharpen 0x0+0+0.05 ../assets-unoptimized/*.png

mogrify -path typo3-1/300 -geometry 300 +profile -quality 70 -type TrueColor -colorspace RGB ../assets-unoptimized/*.jpg
mogrify -path typo3-1/300 -geometry 300 +profile -quality 70 -type TrueColor -colorspace RGB ../assets-unoptimized/*.png
mogrify -path typo3-1/600 -geometry 600 +profile -quality 70 -type TrueColor -colorspace RGB ../assets-unoptimized/*.jpg
mogrify -path typo3-1/600 -geometry 600 +profile -quality 70 -type TrueColor -colorspace RGB ../assets-unoptimized/*.png
mogrify -path typo3-1/1200 -geometry 1200 +profile -quality 70 -type TrueColor -colorspace RGB ../assets-unoptimized/*.jpg
mogrify -path typo3-1/1200 -geometry 1200 +profile -quality 70 -type TrueColor -colorspace RGB ../assets-unoptimized/*.png

mogrify -path typo3-2/300 -geometry 300 +profile ../assets-unoptimized/*.jpg
mogrify -path typo3-2/300 -geometry 300 +profile ../assets-unoptimized/*.png
mogrify -path typo3-2/600 -geometry 600 +profile ../assets-unoptimized/*.jpg
mogrify -path typo3-2/600 -geometry 600 +profile ../assets-unoptimized/*.png
mogrify -path typo3-2/1200 -geometry 1200 +profile ../assets-unoptimized/*.jpg
mogrify -path typo3-2/1200 -geometry 1200 +profile ../assets-unoptimized/*.png

mogrify -path codeigniter/300 -quality 90 -resize 300 ../assets-unoptimized/*.jpg
mogrify -path codeigniter/300 -quality 90 -resize 300 ../assets-unoptimized/*.png
mogrify -path codeigniter/600 -quality 90 -resize 600 ../assets-unoptimized/*.jpg
mogrify -path codeigniter/600 -quality 90 -resize 600 ../assets-unoptimized/*.png
mogrify -path codeigniter/1200 -quality 90 -resize 1200 ../assets-unoptimized/*.jpg
mogrify -path codeigniter/1200 -quality 90 -resize 1200 ../assets-unoptimized/*.png

mogrify -path imagickal/300 -filter Catrom -resize 300 ../assets-unoptimized/*.jpg
mogrify -path imagickal/300 -filter Catrom -resize 300 ../assets-unoptimized/*.png
mogrify -path imagickal/600 -filter Catrom -resize 600 ../assets-unoptimized/*.jpg
mogrify -path imagickal/600 -filter Catrom -resize 600 ../assets-unoptimized/*.png
mogrify -path imagickal/1200 -filter Catrom -resize 1200 ../assets-unoptimized/*.jpg
mogrify -path imagickal/1200 -filter Catrom -resize 1200 ../assets-unoptimized/*.png

mogrify -path craft/300 -filter Lanczos -resize 300 ../assets-unoptimized/*.jpg
mogrify -path craft/300 -filter Lanczos -resize 300 ../assets-unoptimized/*.png
mogrify -path craft/600 -filter Lanczos -resize 600 ../assets-unoptimized/*.jpg
mogrify -path craft/600 -filter Lanczos -resize 600 ../assets-unoptimized/*.png
mogrify -path craft/1200 -filter Lanczos -resize 1200 ../assets-unoptimized/*.jpg
mogrify -path craft/1200 -filter Lanczos -resize 1200 ../assets-unoptimized/*.png


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: test
echo "DSSIM	File" > dssim-test.tsv
FILES="test/300/* test/600/* test/1200/*"
for f in $FILES
do
	orig="${f/test\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-test.tsv
done

# calculate difference: wordpress1
echo "DSSIM	File" > dssim-wordpress1.tsv
FILES="wordpress1/300/* wordpress1/600/* wordpress1/1200/*"
for f in $FILES
do
	orig="${f/wordpress1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-wordpress1.tsv
done

# calculate difference: wordpress2
echo "DSSIM	File" > dssim-wordpress2.tsv
FILES="wordpress2/300/* wordpress2/600/* wordpress2/1200/*"
for f in $FILES
do
	orig="${f/wordpress2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-wordpress2.tsv
done

# calculate difference: drupal
echo "DSSIM	File" > dssim-drupal.tsv
FILES="drupal/300/* drupal/600/* drupal/1200/*"
for f in $FILES
do
	orig="${f/drupal\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-drupal.tsv
done

# calculate difference: perch
echo "DSSIM	File" > dssim-perch.tsv
FILES="perch/300/* perch/600/* perch/1200/*"
for f in $FILES
do
	orig="${f/perch\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-perch.tsv
done

# calculate difference: gruntri1
echo "DSSIM	File" > dssim-gruntri1.tsv
FILES="gruntri1/300/* gruntri1/600/* gruntri1/1200/*"
for f in $FILES
do
	orig="${f/gruntri1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-gruntri1.tsv
done

# calculate difference: gruntri2
echo "DSSIM	File" > dssim-gruntri2.tsv
FILES="gruntri2/300/* gruntri2/600/* gruntri2/1200/*"
for f in $FILES
do
	orig="${f/gruntri2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-gruntri2.tsv
done

# calculate difference: kokentiny
echo "DSSIM	File" > dssim-kokentiny.tsv
FILES="kokentiny/300/* kokentiny/600/* kokentiny/1200/*"
for f in $FILES
do
	orig="${f/kokentiny\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-kokentiny.tsv
done

# calculate difference: kokensmall
echo "DSSIM	File" > dssim-kokensmall.tsv
FILES="kokensmall/300/* kokensmall/600/* kokensmall/1200/*"
for f in $FILES
do
	orig="${f/kokensmall\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-kokensmall.tsv
done

# calculate difference: kokenmedium
echo "DSSIM	File" > dssim-kokenmedium.tsv
FILES="kokenmedium/300/* kokenmedium/600/* kokenmedium/1200/*"
for f in $FILES
do
	orig="${f/kokenmedium\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-kokenmedium.tsv
done

# calculate difference: kokenxlarge
echo "DSSIM	File" > dssim-kokenxlarge.tsv
FILES="kokenxlarge/300/* kokenxlarge/600/* kokenxlarge/1200/*"
for f in $FILES
do
	orig="${f/kokenxlarge\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-kokenxlarge.tsv
done

# calculate difference: kokenhuge
echo "DSSIM	File" > dssim-kokenhuge.tsv
FILES="kokenhuge/300/* kokenhuge/600/* kokenhuge/1200/*"
for f in $FILES
do
	orig="${f/kokenhuge\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-kokenhuge.tsv
done

# calculate difference: typo3-1
echo "DSSIM	File" > dssim-typo3-1.tsv
FILES="typo3-1/300/* typo3-1/600/* typo3-1/1200/*"
for f in $FILES
do
	orig="${f/typo3-1\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-typo3-1.tsv
done

# calculate difference: typo3-2
echo "DSSIM	File" > dssim-typo3-2.tsv
FILES="typo3-2/300/* typo3-2/600/* typo3-2/1200/*"
for f in $FILES
do
	orig="${f/typo3-2\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-typo3-2.tsv
done

# calculate difference: codeigniter
echo "DSSIM	File" > dssim-codeigniter.tsv
FILES="codeigniter/300/* codeigniter/600/* codeigniter/1200/*"
for f in $FILES
do
	orig="${f/codeigniter\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-codeigniter.tsv
done

# calculate difference: imagickal
echo "DSSIM	File" > dssim-imagickal.tsv
FILES="imagickal/300/* imagickal/600/* imagickal/1200/*"
for f in $FILES
do
	orig="${f/imagickal\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-imagickal.tsv
done

# calculate difference: craft
echo "DSSIM	File" > dssim-craft.tsv
FILES="craft/300/* craft/600/* craft/1200/*"
for f in $FILES
do
	orig="${f/craft\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-craft.tsv
done
