# Test 78: optim no-optim compare 2

* Most things had no effect on file size compared to the previous test

* the way these things interact is really interesting and weird
	* p+c+e+s		218,317.20
	* p+c+e			218,317.38
	* d+p+c+e		218,317.39
	* d+p+c+e+s	218,317.39
	* all				218,364.44
	* p+c				218,503.25
	* d+p+c			218,503.26
	* d+s				218,712.18
	* **prev		218,712.37**
	* e				218,712.37
	* c				218,712.38
	* c+e				218,712.38
	* c+e+s			218,712.38
	* d				218,712.38
	* d+c+e			218,712.38
	* d+c+e+s		218,712.38
	* d+e+s			218,712.38
	* e+s				218,712.38
	* c+s				218,712.41
	* d+c				218,712.48
	* d+e				218,713.21
	* default		218,731.08
	* d+p				218,877.42
	* p				218,877.42
	* p+e				218,933.23
	* p+e+s			218,933.23
	* p+s				218,933.23

* I somehow didn't test s on its own

* on its own p had a negative effect

* no other feature on its had any effect

* p combined with e *or* s had a negative effect, unless also combined with c

* for some reason I didn't test p+c+s… I really should have

* p+c had a positive effect; p+c+e had an even greater positive effect (and presumably p+c+s would have had the same effect if I tested it), despite p+e having a negative effect

* it looks like p+c+e gives the best results

* will check DSSIM on all the results that were better than the previous test
	* d+p+c, p+c are outside of the DSSIM threshold
	* all others are OK
	* the four with the best (basically equivalent) file size all have the same DSSIM
	
* given these results, the best option is the p+c+e since it’s tied for best file size, is the least complex of the file-size winners, and has an acceptable DSSIM

* that means the (hopefully) final result is:

````
mogrify -path OUTPUT_PATH -filter Triangle -define filter:support=2.0 -thumbnail OUTPUT_WIDTH -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB INPUT_PATH && image_optim -r OUTPUT_PATH --config-paths i_o.yml && picopt -r OUTPUT_PATH && imageoptim -d OUTPUT_PATH -q
````

…with the following yaml file:

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