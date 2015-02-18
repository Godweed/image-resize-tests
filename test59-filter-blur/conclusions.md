# Test 59: filter:blur

* OK quality: default, 1.0 (which are the same)

* But, 0.8 is close, so there may be a value between 0.8 and 1.0 that produces OK quality.

* Unfortunately, it looks like the file size might be bigger if I look there. I think I’m not going to bother.

* Interestingly, it looks like that whole `-type TrueColorMatte` from the last time was a red herring; the file size gains I saw from it are now gone, meaning it was just random fluctuation. I can remove that from the winning candidate (which is kind of good, because I didn’t understand why it was helping).