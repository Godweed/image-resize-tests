# Test 9: unsharp radius

* 0.3 is best for quality match but any value from 0.0 to 0.4 is pretty good

* This range is at the low-end for file size, too

* 0.2 is best for file size, but it’s a pretty small difference between that and 0.3 or 0.1

* I could run another to test to try to pinpoint the most exact optimal spot between 0.2 and 0.3, but I say let’s split the difference and go for a .25 radius

* According to <http://redskiesatnight.com/2005/04/06/sharpening-using-image-magick/>, the radius I should be using is 0.48, which is calculated from these equations:

	> radius = (output ppi / 30) * 0, or   
	> radius = output ppi / 150

	…meh.