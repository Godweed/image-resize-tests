# Test 17: interlace

* DSSIM the same for all of them, as expected

* No interlacing has the best file size, and is what we’re going with.

* If you want to do interlacing, it’s not clear what PNG, JPEG, or GIF do. The IM doc recommends either line or plane, not partition. Partition is smaller than the other two, but I guess…I’m not sure why we shouldn’t use it. Of line and plane, plane is smaller, so use that.