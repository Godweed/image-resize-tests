# Test 51: jpeg q-tables

* since there are *so many*, I’m going to wait and only optimize the ones that hit the quality targets

* DSSIM generated this message:

	`initImageAppleJPEG:1416: falling back to libJPEG`
	
	Not sure how to interpret that, exactly.	
* I honestly really don’t know what these q-tables are doing and haven’t spent much time looking into them. It’s probably worth researching more, but I haven’t had the time.

* q-tables that hit the quality target include:
	* none/default
	* 01
	* 02
	* 04
	* 07
	* 08
	* 12
	* 13
	* 14
	* 15
	* 16	
	* 19
	* 21
	* 22
	* 23
	* 24
	* 25
	* 26
	* 27
	* 28
	* 33
	* 35

	…so, a lot :/

* None of these produced smaller file sizes.

* This isn’t entirely surprising, since all my optimizations were based on the default q-table. Maybe if I had started with one of the others…

* So, here’s a thought: #7 is *almost* the same size as the default, and a little better DSSIM. Not tons, but maybe enough that if I use that quantization table, I can then reduce the colours as in test 46/47.