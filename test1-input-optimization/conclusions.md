# Test 1: optimization before resize

## From overall/averages:

1. unoptimized input leads to smaller file size
	unoptimized input:	output = ~86.2MB
	optimized input:	output = ~88.9MB
	unoptimized input = ~97% the size of optimized input, ~3% file size savings

2. no real difference in quality
	unoptimized input:	output = 0.00944281 DDSIM
	optimized input:	output = 0.009463156 DDSIM
	unoptimized input 0.00002035 (0.002035%) closer to control

## More detail:

1. Overall, total output size from *unoptimized input* is 3,394,946 bytes *smaller* than from optimized input.

2. For GIFs, total output size from *unoptimized input* is 3,478,789 bytes *smaller* than from optimized input.

3. For JPEGs, total output size is *the same* for optimized and unoptimized input.

4. For PNGs, total output size from *unoptimized input* is 83,843 bytes *larger* than from optimized input.

5. For GIFs, 7 out of 27 files were *larger* from *unoptimized input*, 20 out of 27 were *smaller* from *unoptimized input*.

6. The PNGs that were larger from unoptimized input were all B&W, except for one which was kind of duotone.

7. There was *no file size effect* for *any* JPEG files.

8. For PNGs, 7 out of 54 files were *larger* from *unoptimized input*, 1 out of 54 files was *smaller* from *unoptimized input*, and 46 out of 54 files were unaffected by input type.

9. Overall, there *quality effect was negligible*.

10. For JPEGs, there was *no quality effect*


## Conclusions:

1. If you only have JPEGs, there’s no point optimizing before resizing.

2. In general, you should see slightly better smaller results by optimizing PNGs before resizing.

3. You’re better off not optimizing GIFs before resizing them.

4. If you have a mix of file types including lots of GIFs, you’re better off not optimizing anything before resizing; the gains from the GIFs will outweigh the losses from the PNGs.
