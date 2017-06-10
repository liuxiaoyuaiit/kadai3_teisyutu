#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}
#######
#TEST1#
#######
echo 120 > $tmp-ans
./17745149.sh 100 120 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"
##diff $tmp-ans $tmp-out && echo "TEST1 OK"


#######
#TEST2#
#######
- ./17745149.sh
- ./17745149.sh 120 40
- ./17745149.sh 150 50

echo "TEST OK"
rm -f $tmp-*
exit 0
