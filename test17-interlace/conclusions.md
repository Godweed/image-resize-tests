# Test 17: interlace

* DSSIM the same for all of them, as expected

* No interlacing has the best file size, and is what we’re going with.

* If you want to do interlacing, it’s not clear what PNG, JPEG, or GIF do. The IM doc recommends either line or plane, not partition; I’m not sure why we shouldn’t use partition. Plane is smallest of the non-image format ones.