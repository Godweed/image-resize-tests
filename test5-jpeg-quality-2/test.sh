#!/bin/bash


# setup dir/structure
rm -r 71 72 73 74 75 76 77 78 79 81 82 83 84 85 86 87 88 89
mkdir 71 72 73 74 75 76 77 78 79 81 82 83 84 85 86 87 88 89
mkdir 71/300 71/600 71/1200
mkdir 72/300 72/600 72/1200
mkdir 73/300 73/600 73/1200
mkdir 74/300 74/600 74/1200
mkdir 75/300 75/600 75/1200
mkdir 76/300 76/600 76/1200
mkdir 77/300 77/600 77/1200
mkdir 78/300 78/600 78/1200
mkdir 79/300 79/600 79/1200
mkdir 81/300 81/600 81/1200
mkdir 82/300 82/600 82/1200
mkdir 83/300 83/600 83/1200
mkdir 84/300 84/600 84/1200
mkdir 85/300 85/600 85/1200
mkdir 86/300 86/600 86/1200
mkdir 87/300 87/600 87/1200
mkdir 88/300 88/600 88/1200
mkdir 89/300 89/600 89/1200
echo "# Test 5: JPEG quality 2" > conclusions.md

# resize
mogrify -path 71/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 71 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 71/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 71 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 71/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 71 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 72/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 72 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 72/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 72 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 72/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 72 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 73/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 73 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 73/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 73 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 73/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 73 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 74/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 74 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 74/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 74 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 74/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 74 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 75/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 75 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 75/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 75 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 75/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 75 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 76/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 76 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 76/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 76 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 76/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 76 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 77/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 77 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 77/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 77 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 77/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 77 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 78/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 78 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 78/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 78 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 78/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 78 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 79/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 79 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 79/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 79 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 79/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 79 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 81/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 81 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 81/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 81 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 81/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 81 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 82/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 82 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 82/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 82 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 82/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 82 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 83/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 83 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 83/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 83 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 83/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 83 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 84/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 84 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 84/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 84 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 84/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 84 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 85/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 85 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 85/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 85 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 85/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 85 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 86/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 86 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 86/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 86 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 86/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 86 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 87/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 87 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 87/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 87 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 87/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 87 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 88/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 88 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 88/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 88 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 88/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 88 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg

mogrify -path 89/300 -interpolate bicubic -distort Resize 300 -unsharp 0x1.0 -quality 89 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 89/600 -interpolate bicubic -distort Resize 600 -unsharp 0x1.0 -quality 89 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg
mogrify -path 89/1200 -interpolate bicubic -distort Resize 1200 -unsharp 0x1.0 -quality 89 -interlace none -colorspace sRGB -strip ../assets-optimized/*.jpg


#!/bin/bash
# optimize
imageoptim -d . -q
imageoptim -d . -q
imageoptim -d . -q


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: 71
echo "DSSIM	File" > dssim-71.tsv
FILES="71/300/*.jpg 71/600/*.jpg 71/1200/*.jpg"
for f in $FILES
do
	orig="${f/71\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-71.tsv
done


# calculate difference: 72
echo "DSSIM	File" > dssim-72.tsv
FILES="72/300/*.jpg 72/600/*.jpg 72/1200/*.jpg"
for f in $FILES
do
	orig="${f/72\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-72.tsv
done


# calculate difference: 73
echo "DSSIM	File" > dssim-73.tsv
FILES="73/300/*.jpg 73/600/*.jpg 73/1200/*.jpg"
for f in $FILES
do
	orig="${f/73\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-73.tsv
done


# calculate difference: 74
echo "DSSIM	File" > dssim-74.tsv
FILES="74/300/*.jpg 74/600/*.jpg 74/1200/*.jpg"
for f in $FILES
do
	orig="${f/74\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-74.tsv
done


# calculate difference: 75
echo "DSSIM	File" > dssim-75.tsv
FILES="75/300/*.jpg 75/600/*.jpg 75/1200/*.jpg"
for f in $FILES
do
	orig="${f/75\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-75.tsv
done


# calculate difference: 76
echo "DSSIM	File" > dssim-76.tsv
FILES="76/300/*.jpg 76/600/*.jpg 76/1200/*.jpg"
for f in $FILES
do
	orig="${f/76\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-76.tsv
done


# calculate difference: 77
echo "DSSIM	File" > dssim-77.tsv
FILES="77/300/*.jpg 77/600/*.jpg 77/1200/*.jpg"
for f in $FILES
do
	orig="${f/77\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-77.tsv
done


# calculate difference: 78
echo "DSSIM	File" > dssim-78.tsv
FILES="78/300/*.jpg 78/600/*.jpg 78/1200/*.jpg"
for f in $FILES
do
	orig="${f/78\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-78.tsv
done


# calculate difference: 79
echo "DSSIM	File" > dssim-79.tsv
FILES="79/300/*.jpg 79/600/*.jpg 79/1200/*.jpg"
for f in $FILES
do
	orig="${f/79\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-79.tsv
done


# calculate difference: 81
echo "DSSIM	File" > dssim-81.tsv
FILES="81/300/*.jpg 81/600/*.jpg 81/1200/*.jpg"
for f in $FILES
do
	orig="${f/81\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-81.tsv
done


# calculate difference: 82
echo "DSSIM	File" > dssim-82.tsv
FILES="82/300/*.jpg 82/600/*.jpg 82/1200/*.jpg"
for f in $FILES
do
	orig="${f/82\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-82.tsv
done


# calculate difference: 83
echo "DSSIM	File" > dssim-83.tsv
FILES="83/300/*.jpg 83/600/*.jpg 83/1200/*.jpg"
for f in $FILES
do
	orig="${f/83\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-83.tsv
done


# calculate difference: 84
echo "DSSIM	File" > dssim-84.tsv
FILES="84/300/*.jpg 84/600/*.jpg 84/1200/*.jpg"
for f in $FILES
do
	orig="${f/84\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-84.tsv
done


# calculate difference: 85
echo "DSSIM	File" > dssim-85.tsv
FILES="85/300/*.jpg 85/600/*.jpg 85/1200/*.jpg"
for f in $FILES
do
	orig="${f/85\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-85.tsv
done


# calculate difference: 86
echo "DSSIM	File" > dssim-86.tsv
FILES="86/300/*.jpg 86/600/*.jpg 86/1200/*.jpg"
for f in $FILES
do
	orig="${f/86\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-86.tsv
done


# calculate difference: 87
echo "DSSIM	File" > dssim-87.tsv
FILES="87/300/*.jpg 87/600/*.jpg 87/1200/*.jpg"
for f in $FILES
do
	orig="${f/87\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-87.tsv
done


# calculate difference: 88
echo "DSSIM	File" > dssim-88.tsv
FILES="88/300/*.jpg 88/600/*.jpg 88/1200/*.jpg"
for f in $FILES
do
	orig="${f/88\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-88.tsv
done


# calculate difference: 89
echo "DSSIM	File" > dssim-89.tsv
FILES="89/300/*.jpg 89/600/*.jpg 89/1200/*.jpg"
for f in $FILES
do
	orig="${f/89\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-89.tsv
done


