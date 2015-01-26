# Test 16: strip

* Unsurprisingly, no difference in quality

* Surprisingly, not using `-strip` resulted in smaller files *even after optimizing*. Not a huge difference, but a difference nonetheless. So, we don’t strip.

* I’m starting to suspect these small differences in file size are just noise; that sometimes the optimization works a little better than other times. :/

* In general, I think using strip is a good idea, in case no optimization is performed afterwards…