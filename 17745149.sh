#!/bin/sh

#最大公約数#
#./17745149 a b で実行しましょう#
##

a=$1
b=$2

if [ $# -nr 2 ];
	then
		echo "2 num please" 1>&2
		exit 1
fi

if [ $a = $b ];
	then
		echo $b
	else
		while [ 0 -lt $a ]
	do
		r=`expr $b % $a`
		b=$a
		a=$r
	done
	echo "number="$b
fi

