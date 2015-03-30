# Test 77: optim no-optim compare

* DSSIM OK across the board, so we’re just looking at file size
	
	* other:	218,364.43
	* f:			218,712.38
	* c+f:		218,712.38
	* default:	218,731.08
	* c:			218,731.09
	* f+u:		218,766.44
	* c+f+u:	218,768.13
	* c+u:		218,786.72
	* u:			218,786.73
	* f+p:		218,877.40
	* p:			218,895.87
	* c+f+p+u:	218,931.62
	* f+p+u:	218,931.88
	* p+u:		218,951.14
	* c+p+u:	218,951.73
	* c+p:		219,339.93
	* c+f+p:	219,360.15

* Interestingly, other comes out on top. That’s the stuff that I *thought* would make no difference

* (c)olourspace made no difference as long as p wasn’t in the mix, and the only thing to have a positive effect was turning (f)ancy upsampling off

* so I should retest with c+f and then the “other” options one-by-one. (I’m keeping c because I think it’s a good idea and it doesn’t hurt)