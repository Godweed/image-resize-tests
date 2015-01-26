# Test 18: colorspace

* none–none, which we started with, has the lowest file size. I find that surprising for some reason, but can’t put my finger on why.

* the ones converted to RGB at the end, instead of sRGB, have terrible DSSIM (which isn’t surprising, since we’re comparing it with an image in sRGB space)

* it looks like the ones that *don’t* specifically convert to anything at the end are identical to those that convert to sRGB at the end, except for the none-none one.

* none–none has by far the closest quality to Photoshop

* none–none is not the smallest at all; the ranking is:

	* none-srgb	254,318.03
	* rgb-srgb	254,409.58
	* srgb-srgb	254,410.93
	* srgb-none	254,411.72
	* rgb-none	254,414.04
	* none-none	255,203.63
	* rgb-rgb	256,797.11
	* srgb-rgb	256,800.59
	* none-rgb	256,845.75
	* luv-none	262,404.58
	* luv-srgb	262,405.93
	* lab-none	264,740.98
	* lab-srgb	264,741.25
	* luv-rgb	265,050.73
	* lab-rgb	266,677.06

* since having none-none gets us within .0075 DSSIM, and since the average file size difference isn’t enormous, I’m thinking I’ll go with none—none