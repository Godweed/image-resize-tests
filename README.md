# image-resize-tests

## With optimization

Winning result:

````
mogrify -path OUTPUT_PATH -filter Triangle -define filter:support=2.0 -thumbnail OUTPUT_WIDTH -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB INPUT_PATH && \
image_optim -r OUTPUT_PATH --config-paths i_o.yml && \
picopt -r OUTPUT_PATH && \
imageoptim -d OUTPUT_PATH -q
````

…with the following `i_o.yml` file:

````
verbose: true
jpegtran:
  progressive: false
optipng:
  level: 7
  interlace: false
pngcrush:
  fix: true
  brute: true
pngquant:
  speed: 11
````
