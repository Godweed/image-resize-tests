# Test 21: resampling filter

## DSSIM ranking

* Lagrange			0.005749892
* Lanczos2			0.005767592
* Catrom			0.005787825
* Parzen			0.005818317
* Bohman			0.005870967
* Blackman			0.005886283
* Lanczos2Sharp	0.005940367
* Lanczos			0.006007633
* LanczosRadius	0.006007633
* Kaiser			0.006009925
* Hann				0.0060836
* Hanning			0.0060836
* LanczosSharp	0.006102542
* Bartlett			0.006120633
* Cosine			0.006135033
* RobidouxSharp	0.006141192
* Hamming			0.006143425
* Welch				0.006224458
* Welsh				0.006224458	
* none				0.006245517
* Mitchell			0.006358642
* Robidoux			0.006521233
* Hermite			0.006599625
* Triangle			0.006754267

---

* Bessel			0.007288108
* Jinc				0.007288108

---

* Sinc				0.008232692
* SincFast			0.008232717
* Gaussian			0.008278642
* Quadratic		0.008472367
* Box					0.009394542
* Cubic				0.010582292
* Spline			0.010582292
* Point				0.0233501

* Everything above the second line has an acceptable overall mean quality score
* Everything above the first line has an acceptable score for file type and output size means

## File sizes

* Triangle			242,103.71
* Hermite			244,843.34
* Robidoux			246,874.82
* Mitchell			247,601.94
* none				248,647.60
* RobidouxSharp	248,745.04
* Lagrange			250,183.53
* Catrom			251,275.70
* Lanczos2			251,678.73
* Lanczos2Sharp	253,839.43
* Parzen			263,893.25
* Bohman			266,845.13
* Lanczos			270,388.70
* LanczosRadius	270,389.78
* Kaiser			271,023.53
* LanczosSharp	272,151.71
* Bartlett			272,946.00
* Hanning			272,987.91
* Hann				272,998.34
* Hamming			273,129.07
* Cosine			273,273.23
* Welsh				274,852.58
* Welch				274,865.22
* Blackman			295,907.75

---

* Point				201,678.20
* Box					219,636.19
* Cubic				236,628.88
* Spline			236,631.35
* Quadratic		241,177.85
* Gaussian			242,892.27
* Jinc				270,463.44
* Bessel			270,465.38
* Sinc				283,095.86
* SincFast			283,113.23

* Above the line are the acceptable quality ones, below the line are unacceptable
* Triangle delivers the worst quality of all the acceptable ones, but the smallest file size
* Meh, acceptable is acceptable. Triangle wins!