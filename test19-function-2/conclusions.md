# Test 19: resizing function (yet again)

* I probably don’t need to test the function (or interpolation) so many times, but… I’m going to

* One thing I’m noticing this time that I didn’t before is that liquid is *crazy* slow (in addition to being horrifying)

* So…DSSIM. Here’s the breakdown:

	* distort			0.005521533
	* resize			0.005852675
	* geometry			0.005852675
	* thumbnail		0.006212292
	* scale				0.007211242
	* adaptive			0.016158667
	* interpolative	0.016158667
	* sample:			0.022119325
	* liquid			1.022963692

* distort, resize, geometry, thumbnail, and scale all fall within out 0.0075 DSSIM target for overall average. Of those, distort, resize, geometry, and thumbnail also fall within that target for averages with different file formats and output sizes. I’ll consider any of those acceptable, and will look at file size to decide

* File sizes means:

	* sample			200,894.10
	* thumbnail		248,644.66
	* scale				249,132.09
	* interpolative	251,118.66
	* adaptive			251,119.11
	* resize			255,314.53
	* geometry			255,314.75
	* distort			255,358.63
	* liquid			261,304.15
	
* So, despite using distort all this time up until now, `thumbnail` is the new winner!