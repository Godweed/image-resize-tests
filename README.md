# image-resize-tests

* Winning result without optimization:

	````
mogrify -path OUTPUT_PATH -filter Triangle -define filter:support=2.0 -thumbnail OUTPUT_WIDTH -unsharp 0.25x0.25+8.00+0.065 -dither None -posterize 136 -background Black -alpha Background -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip INPUT_PATH
````