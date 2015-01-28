# Test 20: interpolation setting

* Absolutely no difference in DSSIM, which I think is a very clear indication that `thumbnail` doesn’t use the interpolation setting at all (and so we should choose none)

* The differences in file size here also indicate that there is some kind of randomness involved, unfortunately. This sucks…

* …Somehow `spline` ends up with a smaller file size than anything else.

* …`Background` should be the same here and in the last test, but isn’t (248,646.03 here vs. 248,646.14 there).

* UGH

* So… I’m going to go with the logical choice, no interpolation setting