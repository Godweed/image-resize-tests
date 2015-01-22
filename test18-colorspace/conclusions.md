# Test 18: colorspace

* none–none, which we started with, has the lowest file size. I find that surprising for some reason, but can’t put my finger on why.

* the ones converted to RGB at the end, instead of sRGB, have terrible DSSIM (which isn’t surprising, since we’re comparing it with an image in sRGB space)

* it looks like the ones that *don’t* specifically convert to anything at the end are identical to those that convert to sRGB at the end, except for the none-none one.

* none–none has by far the closest quality to Photoshop

* none–none is not the smallest at all; the ranking is:

	* rgb-none	254,547.09
	* srgb-srgb	254,550.03
	* rgb-srgb	254,550.07
	* srgb-none	254,550.77
	* none-srgb	254,470.97
	* none-none	255,358.51
	* rgb-rgb	256,979.41
	* srgb-rgb	256,979.70
	* none-rgb	257,029.90
	* luv-srgb	262,575.51
	* luv-none	262,576.83
	* lab-srgb	263,514.13
	* lab-none	263,519.38
	* luv-rgb	265,237.32
	* lab-rgb	265,503.13

* since having none-none gets us within .0075 DSSIM, and since the average file size difference isn’t enormous, I’m thinking I’ll go with none—none