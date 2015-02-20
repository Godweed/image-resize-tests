# image-resize-tests

Winning result:

````
imageoptim INPUT_PATH
imageoptim INPUT_PATH
imageoptim INPUT_PATH
mogrify -path OUTPUT_PATH -filter Triangle -define filter:support=2.0 -thumbnail OUTPUT_WIDTH -unsharp 0.25x0.25+9.00+0.045 -dither None -posterize 136 -quality 82 -define png:preserve-colormap=true -interlace none INPUT_PATH
imageoptim OUTPUT_PATH
imageoptim OUTPUT_PATH
imageoptim OUTPUT_PATH
````

## TODO

* Test without image optimization and with GraphicsMagick