# Test 70: mogrify convert

* DSSIM change seems to happen between 6 and 7

* It’s like whatever I’m doing with 7 — `jpeg:fancy upsampling` — doesn’t happen with `convert`

* There are file size differences right off the bat, with `convert` > `mogrify`, but most of these differences seem to disappear by the time we get to the full thing

* Need to run this again without fancy upsampling to see if that eliminates all the differences