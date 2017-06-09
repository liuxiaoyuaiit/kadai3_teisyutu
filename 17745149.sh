#!/bin/sh

#最大公約数#
#./17745149 a b で実行しましょう#
##

a=$1
b=$2

if [ $# -ne 2 ]; 
	then
		echo "err!" 1>&2
		exit 1
fi


if [ $# -lt 2 ];
	then
		echo "err!!!" 1>&2
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

m=$a
n=$b

r=$((m%n))

while [ "$r" -ne 0 ]
do
	m=$n
	n=$r
	r=$(($m%$n))
done

echo "$n" 
