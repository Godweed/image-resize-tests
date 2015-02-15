# Test 53: jpeg sampling factor

* A bunch of `initImageAppleJPEG:1416: falling back to libJPEG`

* 2x2, 2x2, 2x2 was messed up…

	````
Can't read ./2x2-2x2-2x2/300/1A-1.jpg
Can't read ./2x2-2x2-2x2/300/1A-2.jpg
Can't read ./2x2-2x2-2x2/300/1A-3.jpg
Can't read ./2x2-2x2-2x2/300/1B-1.jpg
Can't read ./2x2-2x2-2x2/300/2A-1.jpg
Can't read ./2x2-2x2-2x2/300/2A-2.jpg
Can't read ./2x2-2x2-2x2/300/2A-3.jpg
Can't read ./2x2-2x2-2x2/300/3A-1.jpg
Can't read ./2x2-2x2-2x2/300/3A-3.jpg
Can't read ./2x2-2x2-2x2/300/3B-1.jpg
Can't read ./2x2-2x2-2x2/300/4A-2.jpg
Can't read ./2x2-2x2-2x2/300/6D.jpg
Can't read ./2x2-2x2-2x2/300/6E.jpg
Can't read ./2x2-2x2-2x2/300/6F.jpg
Can't read ./2x2-2x2-2x2/300/6G.jpg
Can't read ./2x2-2x2-2x2/600/1A-1.jpg
Can't read ./2x2-2x2-2x2/600/1A-2.jpg
Can't read ./2x2-2x2-2x2/600/1A-3.jpg
Can't read ./2x2-2x2-2x2/600/1B-1.jpg
Can't read ./2x2-2x2-2x2/600/2A-1.jpg
Can't read ./2x2-2x2-2x2/600/2A-2.jpg
Can't read ./2x2-2x2-2x2/600/2A-3.jpg
Can't read ./2x2-2x2-2x2/600/3A-1.jpg
Can't read ./2x2-2x2-2x2/600/3A-3.jpg
Can't read ./2x2-2x2-2x2/600/3B-1.jpg
Can't read ./2x2-2x2-2x2/600/4A-2.jpg
Can't read ./2x2-2x2-2x2/600/6D.jpg
Can't read ./2x2-2x2-2x2/600/6E.jpg
Can't read ./2x2-2x2-2x2/600/6F.jpg
Can't read ./2x2-2x2-2x2/600/6G.jpg
Can't read ./2x2-2x2-2x2/1200/1A-1.jpg
Can't read ./2x2-2x2-2x2/1200/1A-2.jpg
Can't read ./2x2-2x2-2x2/1200/1A-3.jpg
Can't read ./2x2-2x2-2x2/1200/1B-1.jpg
Can't read ./2x2-2x2-2x2/1200/2A-1.jpg
Can't read ./2x2-2x2-2x2/1200/2A-2.jpg
Can't read ./2x2-2x2-2x2/1200/2A-3.jpg
Can't read ./2x2-2x2-2x2/1200/3A-1.jpg
Can't read ./2x2-2x2-2x2/1200/3A-3.jpg
Can't read ./2x2-2x2-2x2/1200/3B-1.jpg
Can't read ./2x2-2x2-2x2/1200/4A-2.jpg
Can't read ./2x2-2x2-2x2/1200/6D.jpg
Can't read ./2x2-2x2-2x2/1200/6E.jpg
Can't read ./2x2-2x2-2x2/1200/6F.jpg
Can't read ./2x2-2x2-2x2/1200/6G.jpg
````

* Ones that hit the quality targets:
	* default
	* 1x1
	* 1x1-1x1
	* 1x1-1x1-1x1
	* 1x2-1x2-1x2
	* 2x1-2x1-2x1
	* 2x2-2x2-2x2

* None of these were smaller than the default (except 2x2-2x2-2x2, which was messed up)