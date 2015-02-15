#!/bin/bash

# clean up
mkdir bad-quality
mv 1x1-1x1-1x2 bad-quality/
mv 1x1-1x1-2x1 bad-quality/
mv 1x1-1x1-2x2 bad-quality/
mv 1x1-1x2 bad-quality/
mv 1x1-1x2-1x1 bad-quality/
mv 1x1-1x2-1x2 bad-quality/
mv 1x1-1x2-2x1 bad-quality/
mv 1x1-1x2-2x2 bad-quality/
mv 1x1-2x1 bad-quality/
mv 1x1-2x1-1x1 bad-quality/
mv 1x1-2x1-1x2 bad-quality/
mv 1x1-2x1-2x1 bad-quality/
mv 1x1-2x1-2x2 bad-quality/
mv 1x1-2x2 bad-quality/
mv 1x1-2x2-1x1 bad-quality/
mv 1x1-2x2-1x2 bad-quality/
mv 1x1-2x2-2x1 bad-quality/
mv 1x1-2x2-2x2 bad-quality/
mv 1x2 bad-quality/
mv 1x2-1x1 bad-quality/
mv 1x2-1x1-1x1 bad-quality/
mv 1x2-1x1-1x2 bad-quality/
mv 1x2-1x1-2x1 bad-quality/
mv 1x2-1x1-2x2 bad-quality/
mv 1x2-1x2 bad-quality/
mv 1x2-1x2-1x1 bad-quality/
mv 1x2-1x2-2x1 bad-quality/
mv 1x2-1x2-2x2 bad-quality/
mv 1x2-2x1 bad-quality/
mv 1x2-2x1-1x1 bad-quality/
mv 1x2-2x1-1x2 bad-quality/
mv 1x2-2x1-2x1 bad-quality/
mv 1x2-2x1-2x2 bad-quality/
mv 1x2-2x2 bad-quality/
mv 1x2-2x2-1x1 bad-quality/
mv 1x2-2x2-1x2 bad-quality/
mv 1x2-2x2-2x1 bad-quality/
mv 1x2-2x2-2x2 bad-quality/
mv 2x1 bad-quality/
mv 2x1-1x1 bad-quality/
mv 2x1-1x1-1x1 bad-quality/
mv 2x1-1x1-1x2 bad-quality/
mv 2x1-1x1-2x1 bad-quality/
mv 2x1-1x1-2x2 bad-quality/
mv 2x1-1x2 bad-quality/
mv 2x1-1x2-1x1 bad-quality/
mv 2x1-1x2-1x2 bad-quality/
mv 2x1-1x2-2x1 bad-quality/
mv 2x1-1x2-2x2 bad-quality/
mv 2x1-2x1 bad-quality/
mv 2x1-2x1-1x1 bad-quality/
mv 2x1-2x1-1x2 bad-quality/
mv 2x1-2x1-2x2 bad-quality/
mv 2x1-2x2 bad-quality/
mv 2x1-2x2-1x1 bad-quality/
mv 2x1-2x2-1x2 bad-quality/
mv 2x1-2x2-2x1 bad-quality/
mv 2x1-2x2-2x2 bad-quality/
mv 2x2 bad-quality/
mv 2x2-1x1 bad-quality/
mv 2x2-1x1-1x1 bad-quality/
mv 2x2-1x1-1x2 bad-quality/
mv 2x2-1x1-2x1 bad-quality/
mv 2x2-1x1-2x2 bad-quality/
mv 2x2-1x2 bad-quality/
mv 2x2-1x2-1x1 bad-quality/
mv 2x2-1x2-1x2 bad-quality/
mv 2x2-1x2-2x1 bad-quality/
mv 2x2-1x2-2x2 bad-quality/
mv 2x2-2x1 bad-quality/
mv 2x2-2x1-1x1 bad-quality/
mv 2x2-2x1-1x2 bad-quality/
mv 2x2-2x1-2x1 bad-quality/
mv 2x2-2x1-2x2 bad-quality/
mv 2x2-2x2 bad-quality/
mv 2x2-2x2-1x1 bad-quality/
mv 2x2-2x2-1x2 bad-quality/
mv 2x2-2x2-2x1 bad-quality/

# optimize
imageoptim -d default -q
imageoptim -d default -q
imageoptim -d default -q

imageoptim -d 1x1 -q
imageoptim -d 1x1 -q
imageoptim -d 1x1 -q

imageoptim -d 1x1-1x1 -q
imageoptim -d 1x1-1x1 -q
imageoptim -d 1x1-1x1 -q

imageoptim -d 1x1-1x1-1x1 -q
imageoptim -d 1x1-1x1-1x1 -q
imageoptim -d 1x1-1x1-1x1 -q

imageoptim -d 1x2-1x2-1x2 -q
imageoptim -d 1x2-1x2-1x2 -q
imageoptim -d 1x2-1x2-1x2 -q

imageoptim -d 2x1-2x1-2x1 -q
imageoptim -d 2x1-2x1-2x1 -q
imageoptim -d 2x1-2x1-2x1 -q

imageoptim -d 2x2-2x2-2x2 -q
imageoptim -d 2x2-2x2-2x2 -q
imageoptim -d 2x2-2x2-2x2 -q



# calculate file sizes
echo "Filename	Size" > ./filesize.tsv
ls -l */*/*.jpg */*/*.png | grep -v "^total|^d"|awk '{print $NF"\t"$5 }' >> ./filesize.tsv
