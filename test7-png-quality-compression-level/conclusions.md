# Test 7: PNG quality — compression-level

* As expected, before optimization, 0 has the biggest file size and 9 has the smallest. The difference is huge: 131.3MB vs 28.8MB.

* As expected, quality completely identical across the board

* As with filter, there are very small file size differences. Oddly enough, a `--compression-level` of `6` seems to give the smallest results. It’s not a big difference, but we’ll take it.