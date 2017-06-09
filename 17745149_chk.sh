#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}
######
#TEST#
######
echo aaa 120 NG > $tmp-ans
./17745149.sh 100 120 > $tmp-out && ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"
##diff $tmp-ans $tmp-out && echo "TEST OK"

echo TEST OK
