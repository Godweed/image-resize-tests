# Test 19: resizing function (yet again)

* I probably don’t need to test the function (or interpolation) so many times, but… I’m going to

* One thing I’m noticing this time that I didn’t before is that liquid is *crazy* slow (in addition to being horrifying)

* So…DSSIM. Here’s the breakdown:

	* distort			0.0055314
	* resize			0.005887008
	* geometry			0.005887008
	* thumbnail		0.006245517
	* scale				0.007328842
	* adaptive			0.017290675
	* sample:			0.023337975
	* interpolative	0.758283742
	* liquid			1.022824042

* distort, resize, geometry, thumbnail, and scale all fall within out 0.0075 DSSIM target for overall average. Of those, distort, resize, geometry, and thumbnail also fall within that target for averages with different file formats and output sizes. I’ll consider any of those acceptable, and will look at file size to decide

* Interpolative is *horrible* with interpolation set to Background: it just turns everything white

* File sizes means:

	* interpolative	2,935.68
	* sample			205,349.94
	* thumbnail		248,646.14
	* scale				249,208.61
	* adaptive			251,077.80
	* distort			255,203.60
	* resize			255,311.36
	* geometry			255,312.86
	* liquid			265,898.52
	
* So, despite using distort all this time up until now, `thumbnail` is the new winner!