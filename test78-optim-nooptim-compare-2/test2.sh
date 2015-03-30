#!/bin/bash

# calculate difference: p+c+e+s
echo "DSSIM	File" > dssim-p+c+e+s.tsv
FILES="p+c+e+s/300/*.png p+c+e+s/600/*.png p+c+e+s/1200/*.png p+c+e+s/300/*.jpg p+c+e+s/600/*.jpg p+c+e+s/1200/*.jpg"
for f in $FILES
do
	orig="${f/p+c+e+s\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-p+c+e+s.tsv
done


echo "DSSIM	File" > dssim-p+c+e.tsv
FILES="p+c+e/300/*.png p+c+e/600/*.png p+c+e/1200/*.png p+c+e/300/*.jpg p+c+e/600/*.jpg p+c+e/1200/*.jpg"
for f in $FILES
do
	orig="${f/p+c+e\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-p+c+e.tsv
done


echo "DSSIM	File" > dssim-d+p+c+e.tsv
FILES="d+p+c+e/300/*.png d+p+c+e/600/*.png d+p+c+e/1200/*.png d+p+c+e/300/*.jpg d+p+c+e/600/*.jpg d+p+c+e/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+p+c+e\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+p+c+e.tsv
done


echo "DSSIM	File" > dssim-d+p+c+e+s.tsv
FILES="d+p+c+e+s/300/*.png d+p+c+e+s/600/*.png d+p+c+e+s/1200/*.png d+p+c+e+s/300/*.jpg d+p+c+e+s/600/*.jpg d+p+c+e+s/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+p+c+e+s\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+p+c+e+s.tsv
done


echo "DSSIM	File" > dssim-all.tsv
FILES="all/300/*.png all/600/*.png all/1200/*.png all/300/*.jpg all/600/*.jpg all/1200/*.jpg"
for f in $FILES
do
	orig="${f/all\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-all.tsv
done


echo "DSSIM	File" > dssim-p+c.tsv
FILES="p+c/300/*.png p+c/600/*.png p+c/1200/*.png p+c/300/*.jpg p+c/600/*.jpg p+c/1200/*.jpg"
for f in $FILES
do
	orig="${f/p+c\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-p+c.tsv
done


echo "DSSIM	File" > dssim-d+p+c.tsv
FILES="d+p+c/300/*.png d+p+c/600/*.png d+p+c/1200/*.png d+p+c/300/*.jpg d+p+c/600/*.jpg d+p+c/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+p+c\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+p+c.tsv
done


echo "DSSIM	File" > dssim-d+s.tsv
FILES="d+s/300/*.png d+s/600/*.png d+s/1200/*.png d+s/300/*.jpg d+s/600/*.jpg d+s/1200/*.jpg"
for f in $FILES
do
	orig="${f/d+s\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-d+s.tsv
done


echo "DSSIM	File" > dssim-prev.tsv
FILES="prev/300/*.png prev/600/*.png prev/1200/*.png prev/300/*.jpg prev/600/*.jpg prev/1200/*.jpg"
for f in $FILES
do
	orig="${f/prev\/}"
	orig="${orig/300\//300-optimized/}"
	orig="${orig/600\//600-optimized/}"
	orig="${orig/1200\//1200-optimized/}"
	dssim ../control-ps-save-for-web-\&-devices/$orig ./$f >> dssim-prev.tsv
done


