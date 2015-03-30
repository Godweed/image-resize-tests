#!/bin/bash

# setup dir/structure
rm -r combo-combo combo-i_o combo-IO combo-none combo-picopt i_o-combo i_o-i_o i_o-IO i_o-none i_o-picopt i_o-combo IO-combo IO-i_o IO-IO IO-none IO-picopt none-combo none-i_o none-IO none-none none-picopt picopt-combo picopt-i_o picopt-IO picopt-none picopt-picopt
mkdir combo-combo combo-i_o combo-IO combo-none combo-picopt i_o-combo i_o-i_o i_o-IO i_o-none i_o-picopt i_o-combo IO-combo IO-i_o IO-IO IO-none IO-picopt none-combo none-i_o none-IO none-none none-picopt picopt-combo picopt-i_o picopt-IO picopt-none picopt-picopt
mkdir combo-combo/300 combo-i_o/300 combo-IO/300 combo-none/300 combo-picopt/300 i_o-combo/300 i_o-i_o/300 i_o-IO/300 i_o-none/300 i_o-picopt/300 i_o-combo/300 IO-combo/300 IO-i_o/300 IO-IO/300 IO-none/300 IO-picopt/300 none-combo/300 none-i_o/300 none-IO/300 none-none/300 none-picopt/300 picopt-combo/300 picopt-i_o/300 picopt-IO/300 picopt-none/300 picopt-picopt
mkdir combo-combo/600 combo-i_o/600 combo-IO/600 combo-none/600 combo-picopt/600 i_o-combo/600 i_o-i_o/600 i_o-IO/600 i_o-none/600 i_o-picopt/600 i_o-combo/600 IO-combo/600 IO-i_o/600 IO-IO/600 IO-none/600 IO-picopt/600 none-combo/600 none-i_o/600 none-IO/600 none-none/600 none-picopt/600 picopt-combo/600 picopt-i_o/600 picopt-IO/600 picopt-none/600 picopt-picopt
mkdir combo-combo/1200 combo-i_o/1200 combo-IO/1200 combo-none/1200 combo-picopt/1200 i_o-combo/1200 i_o-i_o/1200 i_o-IO/1200 i_o-none/1200 i_o-picopt/1200 i_o-combo/1200 IO-combo/1200 IO-i_o/1200 IO-IO/1200 IO-none/1200 IO-picopt/1200 none-combo/1200 none-i_o/1200 none-IO/1200 none-none/1200 none-picopt/1200 picopt-combo/1200 picopt-i_o/1200 picopt-IO/1200 picopt-none/1200 picopt-picopt
mkdir assets-combo assets-i_o assets-IO assets-none assets-picopt

echo "# Test 74: optimization" > conclusions.md

# get inputs
cp -r ../assets-unoptimized/* assets-combo/
cp -r ../assets-unoptimized/* assets-i_o/
cp -r ../assets-unoptimized/* assets-IO/
cp -r ../assets-unoptimized/* assets-none/
cp -r ../assets-unoptimized/* assets-picopt/

rm assets-combo/*.gif
rm assets-i_o/*.gif
rm assets-IO/*.gif
rm assets-none/*.gif
rm assets-picopt/*.gif

# optimize inputs

echo "Is “progressive” turned *off* in ImageOptim?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

# need to make sure to turn off "progressive" first
image_optim -r assets-combo --config-paths i_o.yml
imageoptim -d assets-combo -q
picopt -r assets-combo

image_optim -r assets-i_o --config-paths i_o.yml
image_optim -r assets-i_o --config-paths i_o.yml
image_optim -r assets-i_o --config-paths i_o.yml

imageoptim -d assets-IO -q
imageoptim -d assets-IO -q
imageoptim -d assets-IO -q

picopt -r assets-picopt
picopt -r assets-picopt
picopt -r assets-picopt


# resize
mogrify -path combo-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-combo/*.jpg
mogrify -path combo-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-combo/*.png
mogrify -path combo-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-combo/*.jpg
mogrify -path combo-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-combo/*.png
mogrify -path combo-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-combo/*.jpg
mogrify -path combo-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-combo/*.png

cp -r combo-combo/* combo-i_o/
cp -r combo-combo/* combo-IO/
cp -r combo-combo/* combo-none/
cp -r combo-combo/* combo-picopt/

mogrify -path i_o-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-i_o/*.jpg
mogrify -path i_o-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-i_o/*.png
mogrify -path i_o-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-i_o/*.jpg
mogrify -path i_o-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-i_o/*.png
mogrify -path i_o-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-i_o/*.jpg
mogrify -path i_o-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-i_o/*.png

cp -r i_o-combo/* i_o-i_o/
cp -r i_o-combo/* i_o-IO/
cp -r i_o-combo/* i_o-none/
cp -r i_o-combo/* i_o-picopt/

mogrify -path IO-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-IO/*.jpg
mogrify -path IO-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-IO/*.png
mogrify -path IO-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-IO/*.jpg
mogrify -path IO-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-IO/*.png
mogrify -path IO-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-IO/*.jpg
mogrify -path IO-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-IO/*.png

cp -r IO-combo/* IO-i_o/
cp -r IO-combo/* IO-IO/
cp -r IO-combo/* IO-none/
cp -r IO-combo/* IO-picopt/

mogrify -path none-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-none/*.jpg
mogrify -path none-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-none/*.png
mogrify -path none-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-none/*.jpg
mogrify -path none-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-none/*.png
mogrify -path none-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-none/*.jpg
mogrify -path none-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-none/*.png

cp -r none-combo/* none-i_o/
cp -r none-combo/* none-IO/
cp -r none-combo/* none-none/
cp -r none-combo/* none-picopt/

mogrify -path picopt-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-picopt/*.jpg
mogrify -path picopt-combo/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-picopt/*.png
mogrify -path picopt-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-picopt/*.jpg
mogrify -path picopt-combo/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-picopt/*.png
mogrify -path picopt-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-picopt/*.jpg
mogrify -path picopt-combo/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none assets-picopt/*.png

cp -r picopt-combo/* picopt-i_o/
cp -r picopt-combo/* picopt-IO/
cp -r picopt-combo/* picopt-none/
cp -r picopt-combo/* picopt-picopt/


# optimize output

# need to make sure to turn off "progressive" first

image_optim -r combo-combo --config-paths i_o.yml
imageoptim -d combo-combo -q
picopt -r combo-combo

image_optim -r i_o-combo --config-paths i_o.yml
imageoptim -d i_o-combo -q
picopt -r i_o-combo

image_optim -r IO-combo --config-paths i_o.yml
imageoptim -d IO-combo -q
picopt -r IO-combo

image_optim -r none-combo --config-paths i_o.yml
imageoptim -d none-combo -q
picopt -r none-combo

image_optim -r picopt-combo --config-paths i_o.yml
imageoptim -d picopt-combo -q
picopt -r picopt-combo

image_optim -r combo-i_o --config-paths i_o.yml
image_optim -r combo-i_o --config-paths i_o.yml
image_optim -r combo-i_o --config-paths i_o.yml

image_optim -r i_o-i_o --config-paths i_o.yml
image_optim -r i_o-i_o --config-paths i_o.yml
image_optim -r i_o-i_o --config-paths i_o.yml

image_optim -r IO-i_o --config-paths i_o.yml
image_optim -r IO-i_o --config-paths i_o.yml
image_optim -r IO-i_o --config-paths i_o.yml

image_optim -r none-i_o --config-paths i_o.yml
image_optim -r none-i_o --config-paths i_o.yml
image_optim -r none-i_o --config-paths i_o.yml

image_optim -r picopt-i_o --config-paths i_o.yml
image_optim -r picopt-i_o --config-paths i_o.yml
image_optim -r picopt-i_o --config-paths i_o.yml

imageoptim -d combo-IO -q
imageoptim -d combo-IO -q
imageoptim -d combo-IO -q

imageoptim -d i_o-IO -q
imageoptim -d i_o-IO -q
imageoptim -d i_o-IO -q

imageoptim -d IO-IO -q
imageoptim -d IO-IO -q
imageoptim -d IO-IO -q

imageoptim -d none-IO -q
imageoptim -d none-IO -q
imageoptim -d none-IO -q

imageoptim -d picopt-IO -q
imageoptim -d picopt-IO -q
imageoptim -d picopt-IO -q

picopt -r combo-picopt
picopt -r combo-picopt
picopt -r combo-picopt

picopt -r i_o-picopt
picopt -r i_o-picopt
picopt -r i_o-picopt

picopt -r IO-picopt
picopt -r IO-picopt
picopt -r IO-picopt

picopt -r none-picopt
picopt -r none-picopt
picopt -r none-picopt

picopt -r picopt-picopt
picopt -r picopt-picopt
picopt -r picopt-picopt


# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.png */*/*.jpg | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv


# calculate difference: default
# not going to bother with this since it *should* all be lossless
# will maybe run on the winner to compare w/ previous default
