#!/bin/bash

# setup dir/structure
rm -r default-mogrify-a default-convert-a default-mogrify-b default-convert-b logs
mkdir default-mogrify-a default-convert-a default-mogrify-b default-convert-b logs
mkdir default-mogrify-a/300 default-convert-a/300 default-mogrify-b/300 default-convert-b/300 logs
mkdir default-mogrify-a/600 default-convert-a/600 default-mogrify-b/600 default-convert-b/600 logs
mkdir default-mogrify-a/1200 default-convert-a/1200 default-mogrify-b/1200 default-convert-b/1200 logs

echo "# Test 72: valgrind" > conclusions.md

# resize
valgrind -v --tool=massif --log-file=logs/massif-mogrify-1.log mogrify -path default-mogrify-a/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
valgrind -v --tool=massif --log-file=logs/massif-mogrify-2.log mogrify -path default-mogrify-a/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
valgrind -v --tool=massif --log-file=logs/massif-mogrify-3.log mogrify -path default-mogrify-a/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
valgrind -v --tool=massif --log-file=logs/massif-mogrify-4.log mogrify -path default-mogrify-a/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
valgrind -v --tool=massif --log-file=logs/massif-mogrify-5.log mogrify -path default-mogrify-a/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
valgrind -v --tool=massif --log-file=logs/massif-mogrify-6.log mogrify -path default-mogrify-a/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

valgrind -v --tool=callgrind --log-file=logs/callgrind-mogrify-1.log mogrify -path default-mogrify-b/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
valgrind -v --tool=callgrind --log-file=logs/callgrind-mogrify-2.log mogrify -path default-mogrify-b/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
valgrind -v --tool=callgrind --log-file=logs/callgrind-mogrify-3.log mogrify -path default-mogrify-b/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
valgrind -v --tool=callgrind --log-file=logs/callgrind-mogrify-4.log mogrify -path default-mogrify-b/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png
valgrind -v --tool=callgrind --log-file=logs/callgrind-mogrify-5.log mogrify -path default-mogrify-b/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.jpg
valgrind -v --tool=callgrind --log-file=logs/callgrind-mogrify-6.log mogrify -path default-mogrify-b/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none ../assets-optimized/*.png

FILES="../assets-optimized/*.jpg ../assets-optimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-optimized/}"
	fn="${fn/\.\.\/assets\-optimized/}"

	fnNoSlash="${fn/\//}"

	valgrind -v --tool=massif --log-file=logs/massif-convert-$fnNoSlash-300.log convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none default-convert-a/300/$fn
	valgrind -v --tool=massif --log-file=logs/massif-convert-$fnNoSlash-600.log convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none default-convert-a/600/$fn
	valgrind -v --tool=massif --log-file=logs/massif-convert-$fnNoSlash-1200.log convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none default-convert-a/1200/$fn

	valgrind -v --tool=callgrind --log-file=logs/callgrind-convert-$fnNoSlash-300.log convert $f -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none default-convert-b/300/$fn
	valgrind -v --tool=callgrind --log-file=logs/callgrind-convert-$fnNoSlash-600.log convert $f -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none default-convert-b/600/$fn
	valgrind -v --tool=callgrind --log-file=logs/callgrind-convert-$fnNoSlash-1200.log convert $f -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none default-convert-b/1200/$fn
done


# optimize
valgrind -v --tool=massif --log-file=logs/massif-imageoptim-mogrify-1.log imageoptim -d default-mogrify-a -q
valgrind -v --tool=massif --log-file=logs/massif-imageoptim-mogrify-2.log imageoptim -d default-mogrify-a -q
valgrind -v --tool=massif --log-file=logs/massif-imageoptim-mogrify-3.log imageoptim -d default-mogrify-a -q

valgrind -v --tool=callgrind --log-file=logs/callgrind-imageoptim-mogrify-1.log imageoptim -d default-mogrify-b -q
valgrind -v --tool=callgrind --log-file=logs/callgrind-imageoptim-mogrify-2.log imageoptim -d default-mogrify-b -q
valgrind -v --tool=callgrind --log-file=logs/callgrind-imageoptim-mogrify-3.log imageoptim -d default-mogrify-b -q

valgrind -v --tool=massif --log-file=logs/massif-imageoptim-convert-1.log imageoptim -d default-convert-a -q
valgrind -v --tool=massif --log-file=logs/massif-imageoptim-convert-2.log imageoptim -d default-convert-a -q
valgrind -v --tool=massif --log-file=logs/massif-imageoptim-convert-3.log imageoptim -d default-convert-a -q

valgrind -v --tool=callgrind --log-file=logs/callgrind-imageoptim-convert-1.log imageoptim -d default-convert-b -q
valgrind -v --tool=callgrind --log-file=logs/callgrind-imageoptim-convert-2.log imageoptim -d default-convert-b -q
valgrind -v --tool=callgrind --log-file=logs/callgrind-imageoptim-convert-3.log imageoptim -d default-convert-b -q
