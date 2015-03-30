# Test 75: optimization 2

* I’ve run this test a couple times because I think something is wrong. Other tests with the same settings seem to be behaving differently. I don’t know why it happened, but I think it’s resolved.

* There is an effect on DSSIM, which is surising. I thought my settings were lossless. The following are outside threshold: IO-picopt, picopt-IO

* File sizes of acceptable ones:
	* i_o-picopt-IO	218,731.15
	* i_o-IO-picopt	218,813.97
	* IO-i_o-picopt	219,063.84
	* i_o-IO			219,340.16
	* IO-i_o			219,507.54
	* i_o-picopt		219,828.06
	* picopt-i_o-IO	219,904.31
	* IO-picopt-i_o	220,193.37
	* picopt-IO-i_o	220,361.95
	* picopt-i_o		220,950.97

* Order matters

* If you can run ImageOptim (i.e. you have a Mac), i_o-picopt-IO is best. If you can’t (e.g. this is on a server), i_o-picopt is best.