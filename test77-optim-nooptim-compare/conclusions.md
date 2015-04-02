# Test 77: optim no-optim compare

* DSSIM is ok with default, d, d+u, and u

* File size:
	* default:		260,250.18
	* d:				259,850.79
	* d+u:			259,851.72
	* u:				260,254.29

* So… somehow turning dirty transparency *off* helps make the file sizes smallest? Weird…

* That makes my winning no-optim version *very close* to my winning optim version:

	````
mogrify -path OUTPUT_PATH -filter Triangle -define filter:support=2.0 -thumbnail OUTPUT_WIDTH -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip INPUT_PATH
````

* The only difference is slightly different unsharp mask settings and the addition of `strip`