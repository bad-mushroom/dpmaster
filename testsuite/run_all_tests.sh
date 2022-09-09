#!/bin/sh

failed=0

for i in test-*.pl ; do
	echo '-' $i
	./$i "$@" || failed=1
done

exit $failed
