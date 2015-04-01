#!/bin/bash

# setup dir/structure
rm -r test basic
mkdir test basic
mkdir test/300 basic/300
mkdir test/600 basic/600
mkdir test/1200 basic/1200

echo "# Test 79: time" > conclusions.md
echo "Command	Exit status	Elapsed real time ([h:]m:s)	Elapsed real time (s)	CPU seconds (kernel mode)	CPU seconds (user mode)	CPU %	Max resident set size (kb)	Avg resident set size (kb)	Avg memory use (kb)	Avg unshared data area (kb)	Avg unshared stack space (kb)	Avg shared text space (kb)	System page size (b)	Major page faults	Minor page faults	Times swapped	Involuntary context switches	Waits	FS inputs	FS outputs	Socket messages received	Socket messages sent	Signals delivered" > basic.tsv
echo "Command	Exit status	Elapsed real time ([h:]m:s)	Elapsed real time (s)	CPU seconds (kernel mode)	CPU seconds (user mode)	CPU %	Max resident set size (kb)	Avg resident set size (kb)	Avg memory use (kb)	Avg unshared data area (kb)	Avg unshared stack space (kb)	Avg shared text space (kb)	System page size (b)	Major page faults	Minor page faults	Times swapped	Involuntary context switches	Waits	FS inputs	FS outputs	Socket messages received	Socket messages sent	Signals delivered" > test.tsv

# resize and optimize
FILES="../assets-unoptimized/*.jpg ../assets-unoptimized/*.png"
for f in $FILES
do
	fn="${f/\.\.\/assets\-unoptimized/}"
	fn="${fn/\.\.\/assets\-unoptimized/}"
	fn=${fn#"/"}

	# basic

	# 300
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o basic.tsv -a convert $f -resize 300 basic/300/$fn

	# 600
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o basic.tsv -a convert $f -resize 600 basic/600/$fn

	# 1200
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o basic.tsv -a convert $f -resize 1200 basic/1200/$fn


	# test

	# 300
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a mogrify -path test/300 -filter Triangle -define filter:support=2.0 -thumbnail 300 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB $f
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a image_optim test/300/$fn --config-paths i_o.yml
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a picopt test/300/$fn
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a /Applications/ImageOptim.app/Contents/MacOS/ImageOptim test/300/$fn

	# 600
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a mogrify -path test/600 -filter Triangle -define filter:support=2.0 -thumbnail 600 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB $f
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a image_optim test/600/$fn --config-paths i_o.yml
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a picopt test/600/$fn
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a /Applications/ImageOptim.app/Contents/MacOS/ImageOptim test/600/$fn

	# 1200
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a mogrify -path test/1200 -filter Triangle -define filter:support=2.0 -thumbnail 1200 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB $f
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a image_optim test/1200/$fn --config-paths i_o.yml
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a picopt test/1200/$fn
	gtime -f "%C	%x	%E	%e	%S	%U	%P	%M	%t	%K	%D	%p	%X	%Z	%F	%R	%W	%c	%w	%I	%O	%r	%s	%k" -o test.tsv -a /Applications/ImageOptim.app/Contents/MacOS/ImageOptim test/1200/$fn
done

