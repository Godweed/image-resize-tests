#!/bin/bash

# calculate difference: wordpress
echo "DSSIM	File" > dssim-wordpress.tsv
FILES="wordpress/300/* wordpress/600/* wordpress/1200/*"
for f in $FILES
do
	orig="${f/wordpress\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-wordpress.tsv
done

# calculate difference: drupal
echo "DSSIM	File" > dssim-drupal.tsv
FILES="drupal/300/* drupal/600/* drupal/1200/*"
for f in $FILES
do
	orig="${f/drupal\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-drupal.tsv
done

# calculate difference: perch
echo "DSSIM	File" > dssim-perch.tsv
FILES="perch/300/* perch/600/* perch/1200/*"
for f in $FILES
do
	orig="${f/perch\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-perch.tsv
done

# calculate difference: gruntresponsiveimages
echo "DSSIM	File" > dssim-gruntresponsiveimages.tsv
FILES="gruntresponsiveimages/300/* gruntresponsiveimages/600/* gruntresponsiveimages/1200/*"
for f in $FILES
do
	orig="${f/gruntresponsiveimages\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-gruntresponsiveimages.tsv
done

# calculate difference: koken-tiny
echo "DSSIM	File" > dssim-koken-tiny.tsv
FILES="koken-tiny/300/* koken-tiny/600/* koken-tiny/1200/*"
for f in $FILES
do
	orig="${f/koken-tiny\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-koken-tiny.tsv
done

# calculate difference: koken-small
echo "DSSIM	File" > dssim-koken-small.tsv
FILES="koken-small/300/* koken-small/600/* koken-small/1200/*"
for f in $FILES
do
	orig="${f/koken-small\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-koken-small.tsv
done

# calculate difference: koken-medium
echo "DSSIM	File" > dssim-koken-medium.tsv
FILES="koken-medium/300/* koken-medium/600/* koken-medium/1200/*"
for f in $FILES
do
	orig="${f/koken-medium\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-koken-medium.tsv
done

# calculate difference: koken-xlarge
echo "DSSIM	File" > dssim-koken-xlarge.tsv
FILES="koken-xlarge/300/* koken-xlarge/600/* koken-xlarge/1200/*"
for f in $FILES
do
	orig="${f/koken-xlarge\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-koken-xlarge.tsv
done

# calculate difference: koken-huge
echo "DSSIM	File" > dssim-koken-huge.tsv
FILES="koken-huge/300/* koken-huge/600/* koken-huge/1200/*"
for f in $FILES
do
	orig="${f/koken-huge\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-koken-huge.tsv
done

# calculate difference: typo3
echo "DSSIM	File" > dssim-typo3.tsv
FILES="typo3/300/* typo3/600/* typo3/1200/*"
for f in $FILES
do
	orig="${f/typo3\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-typo3.tsv
done

# calculate difference: codeigniter
echo "DSSIM	File" > dssim-codeigniter.tsv
FILES="codeigniter/300/* codeigniter/600/* codeigniter/1200/*"
for f in $FILES
do
	orig="${f/codeigniter\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-codeigniter.tsv
done

# calculate difference: imagickal
echo "DSSIM	File" > dssim-imagickal.tsv
FILES="imagickal/300/* imagickal/600/* imagickal/1200/*"
for f in $FILES
do
	orig="${f/imagickal\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-imagickal.tsv
done

# calculate difference: craft
echo "DSSIM	File" > dssim-craft.tsv
FILES="craft/300/* craft/600/* craft/1200/*"
for f in $FILES
do
	orig="${f/craft\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-craft.tsv
done
