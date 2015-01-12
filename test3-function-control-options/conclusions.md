# Test 3: resizing function + control-like options

* Subjectively, the PNGs look pretty good, the JPEGs look like there’s too much compression (looking at distort results, anyway)

* The quality is worse overall (or at least further from the control) than with the default settings

* JPEG filesize is *way* bigger

* PNG filesize is smaller

* For JPEGs, the DSSIM for Distort, Resize, Geometry, Thumbnail, and Scale aren’t bad

* Same with PNGs

* This matches the results with the default settings

* Going forward, I’m only going to look at the five methods above minus Geometry (since it’s basically the same as Resize) (and hopefully I’ll cut them down the list a bit more as I go)

* I need to isolate the changes I made to figure out why quality is worse and JPEG filesize is up, and hopefully to improve the filesize difference with PNG