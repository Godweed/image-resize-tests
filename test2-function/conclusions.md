# Test 2: resizing function

* Can’t do a 1:1 comparison with optimized versions, because I was looking at GIFs there too

* DSSIM (bold = ≤ 0.015, which was the quality metric I was using for the optimized tests):
	* **0.006605658	distort**
	* **0.007197183	resize**
	* **0.007197183	geometry**
	* **0.007553417	thumbnail**
	* **0.008534442	scale**
	* 0.017852267	interpolative
	* 0.018305825	adaptive
	* 0.02461525		sample
	* 1.021274208	liquid

* File size (bold = top 5):
	* **357,910.03 sample**
	* **383,654.15 thumbnail**
	* **385,795.24 scale**
	* **387,978.56 distort**
	* **395,309.48 adaptive**
	* 395,951.80 interpolative
	* 397,587.52 resize
	* 397,587.52 geometry
	* 463,320.74 liquid

* Overlap is thumbnail, scale, distort; similar to optimized results