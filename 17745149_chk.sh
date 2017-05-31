#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
	echo "$1" > &2
	rm -f $tmp-*
	exit 1
}
######
#TEST#
######
echo aaa 120 NG > $tmp-ans
./17745149.sh aaa 120 > $tmp-out || ERROR_EXIT "TEST-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
