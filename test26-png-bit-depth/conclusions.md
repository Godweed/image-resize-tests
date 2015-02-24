# Test 26: png-bit-depth

* Something I didn’t note with the optimized tests: the cascading stuff generates errors

	````
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/300/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/600/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/1200/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: ignoring invalid defined png:bit-depth =3 @ warning/png.c/WritePNGImage/11747.
mogrify: ignoring invalid defined png:bit-depth =3 @ warning/png.c/WritePNGImage/11747.
mogrify: ignoring invalid defined png:bit-depth =3 @ warning/png.c/WritePNGImage/11747.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/300/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/600/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/1200/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/300/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/600/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
mogrify: Cannot write image with defined png:bit-depth or png:color-type. `cascading/1200/1B-3.png' @ warning/png.c/MagickPNGWarningHandler/1831.
````

* Also, it doesn’t end up making a difference in file size, it ran slowly, and it’s complicated to do. A pretty crappy option, tbh.