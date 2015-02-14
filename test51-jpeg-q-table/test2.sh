#!/bin/bash

# clean up
mkdir bad-quality
mv 03 bad-quality/
mv 05 bad-quality/
mv 06 bad-quality/
mv 09 bad-quality/
mv 10 bad-quality/
mv 11 bad-quality/
mv 17 bad-quality/
mv 18 bad-quality/
mv 20 bad-quality/
mv 29 bad-quality/
mv 30 bad-quality/
mv 31 bad-quality/
mv 32 bad-quality/
mv 34 bad-quality/

# optimize
imageoptim -d none -q
imageoptim -d none -q
imageoptim -d none -q

imageoptim -d 01 -q
imageoptim -d 01 -q
imageoptim -d 01 -q

imageoptim -d 02 -q
imageoptim -d 02 -q
imageoptim -d 02 -q

imageoptim -d 04 -q
imageoptim -d 04 -q
imageoptim -d 04 -q

imageoptim -d 07 -q
imageoptim -d 07 -q
imageoptim -d 07 -q

imageoptim -d 08 -q
imageoptim -d 08 -q
imageoptim -d 08 -q

imageoptim -d 12 -q
imageoptim -d 12 -q
imageoptim -d 12 -q

imageoptim -d 13 -q
imageoptim -d 13 -q
imageoptim -d 13 -q

imageoptim -d 14 -q
imageoptim -d 14 -q
imageoptim -d 14 -q

imageoptim -d 15 -q
imageoptim -d 15 -q
imageoptim -d 15 -q

imageoptim -d 16 -q
imageoptim -d 16 -q
imageoptim -d 16 -q

imageoptim -d 19 -q
imageoptim -d 19 -q
imageoptim -d 19 -q

imageoptim -d 21 -q
imageoptim -d 21 -q
imageoptim -d 21 -q

imageoptim -d 22 -q
imageoptim -d 22 -q
imageoptim -d 22 -q

imageoptim -d 23 -q
imageoptim -d 23 -q
imageoptim -d 23 -q

imageoptim -d 24 -q
imageoptim -d 24 -q
imageoptim -d 24 -q

imageoptim -d 25 -q
imageoptim -d 25 -q
imageoptim -d 25 -q

imageoptim -d 26 -q
imageoptim -d 26 -q
imageoptim -d 26 -q

imageoptim -d 27 -q
imageoptim -d 27 -q
imageoptim -d 27 -q

imageoptim -d 28 -q
imageoptim -d 28 -q
imageoptim -d 28 -q

imageoptim -d 33 -q
imageoptim -d 33 -q
imageoptim -d 33 -q

imageoptim -d 35 -q
imageoptim -d 35 -q
imageoptim -d 35 -q



# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv
