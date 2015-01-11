# Test 2: resizing function

## From overall/averages:

1. The ones in bold are the 5 smallest on average.
	* **sample:**		58.4 MB
	* **distort:**		76.0 MB
	* **scale:**			77.5 MB
	* **adaptive:**		78.7 MB
	* interpolative:	80.6 MB
	* thumbnail:			80.7 MB
	* resize:				81.7 MB
	* geometry:			81.7 MB
	* liquid:				83.6 MB

2. The ones in bold have an average “acceptable” difference in quality of < 0.015
	* **distort:**		0.005727383 DSSIM
	* **resize:**		0.006333283 DSSIM
	* **geometry:**		0.006333283 DSSIM
	* **thumbnail:**	0.006688542 DSSIM
	* **scale:**			0.007652400 DSSIM
	* interpolative:	0.016912158 DSSIM
	* adaptive:			0.017364792 DSSIM
	* sample:				0.023659900 DSSIM
	* liquid:				1.023911633 DSSIM

3. Intersection between top quality and top file size is **distort, scale**. Those might be our best bets.

4. Other options could have a huge effect, so will re-run test with options set similar to control.


## More detail:

1. Looking at file sizes for specific formats, the order changes:

	* GIF (order unchanged from overall) (means shown):
		1. Sample:				818,419.70
		2. Distort:			1,303,473.37
		3. Scale:				1,370,696.63
		4. Adaptive:			1,372,455.30
		5. Liquid:				1,377,489.56
		6. Interpolative:	1,435,573.70
		7. Thumbnail:		1,490,141.56
		8. Resize:				1,494,926.22
		9. Geometry:			1,494,926.22
	* JPEG:
		1. Distort:			246,655.44
		2. Scale:				253,146.03
		3. Resize:				256,133.26
		4. Geometry:			256,133.26
		5. Thumbnail:		256,175.88
		6. Interpolative:	271,833.26
		7. Adaptive:			274,223.24
		8. Sample:				290,219.58
		9. Liquid:				362,666.03
	* PNG:
		1. Sample:				318,157.67
		2. Liquid:				416,119.17
		3. Adaptive:			435,963.19
		4. Thumbnail:		437,128.06
		5. Scale:				440,966.31
		6. Interpolative:	441,399.56
		7. Resize:				451,939.07
		8. Geometry:			451,944.15
		9. Distort:			454,782.96

2. Order changes based on output size, too. Might be because at larger sizes some things are being upscaled, not downscaled.

	* 300px:
		1. Sample:				87,370.47
		2. Distort:			99,272.90
		3. Adaptive:			102,840.67
		4. Scale:				103,942.35
		5. Interpolative:	104,618.47
		6. Thumbnail:		107,257.37
		7. Resize:				108,394.04
		8. Geometry:			108,394.14
		9. Liquid:				133,464.92
	* 600px:
		1. Sample:				277,042.65
		2. Distort:			323,426.27
		3. Scale:				340,919.59
		4. Adaptive:			342,822.51
		5. Thumbnail:		344,513.31
		6. Resize:				347,496.33
		7. Geometry:			347,496.33
		8. Interpolative:	353,581.51
		9. Liquid:				391,072.29
	* 1200px:
		1. Sample:				828,083.57
		2. Distort:			1,128,960.43
		3. Scale:				1,137,354.96
		4. Adaptive:			1,160,398.84
		5. Liquid:				1,181,556.90
		6. Interpolative:	1,185,413.51
		7. Thumbnail:		1,196,113.92
		8. Resize:				1,210,895.61
		9. Geometry:			1,210,901.10

3. Top four don’t change by output size, but their order does slightly.

4. Methods in top four either overall, by file type, or by output size:

	* sample
	* distort
	* scale
	* adaptive
	* resize
	* geometry
	* liquid
	* thumbnail

	…so, everything except interpolative :/

5. Looking at quality for specific formats, order changes:

	* GIF
		1. sample:				0.021832296 DSSIM
		2. resize:				0.023400148 DSSIM
		3. geometry:			0.023400148 DSSIM
		4. thumbnail:		0.023458778 DSSIM
		5. scale:				0.023660815 DSSIM
		6. distort:			0.024471519 DSSIM
		7. interpolative:	0.024568259 DSSIM
		8. adaptive:			0.024804259 DSSIM
		9. liquid:				0.961251926 DSSIM
	* JPEG — same as overall
	* PNG — same as overall

* For GIFs, the quality was fairly universally terrible; over .015 for everything.

* Sample was, surprisingly, the best for GIFs, but still terrible.

* Took a look at them and they are kinda fucked up. I think from now on I’m going to ignore animated GIFs.
	
* Looking at quality at different output sizes, order changes:

	* 300px
		1. resize:				0.006812082 DSSIM
		2. geometry:			0.006812082 DSSIM
		3. distort:			0.007167714 DSSIM
		4. thumbnail:		0.007537551 DSSIM
		5. scale:				0.007934143 DSSIM
		6. interpolative:	0.023616918 DSSIM
		7. adaptive:			0.024271163 DSSIM
		8. sample:				0.030232592 DSSIM
		9. liquid:				1.259359061 DSSIM
	* 600px — same order
		1. distort:			0.010115429 DSSIM
		2. resize:				0.010696490 DSSIM
		3. geometry:			0.010696490 DSSIM
		4. thumbnail:		0.010833408 DSSIM
		5. scale:				0.011868959 DSSIM
		6. interpolative:	0.018265551 DSSIM
		7. adaptive:			0.018592939 DSSIM
		8. sample:				0.023139755 DSSIM
		9. liquid:				1.024033490 DSSIM
	* 1200px — same order
		1. distort:			0.010227408 DSSIM
		2. resize:				0.010895469 DSSIM
		3. geometry:			0.010895469 DSSIM
		4. thumbnail:		0.010935408 DSSIM
		5. scale:				0.011975061 DSSIM
		6. interpolative:	0.013072673 DSSIM
		7. adaptive:			0.013329571 DSSIM
		8. sample:				0.016600306 DSSIM
		9. liquid:				0.753815571 DSSIM

* At 1200px, quality is acceptable for everything but sample and liquid