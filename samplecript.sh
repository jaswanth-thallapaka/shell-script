#!/bin/bash


###############
#author: jaswanth
#date: 2/3/2025
#purpose: this code generates the numbers which are divisible by 3, 5 and not divisible by 15 in a range of 100
##################
a=100

i=$a
for i in {1..100}; do
	if (( $i % 3 == 0 || $i % 5 == 0 )) && (( $i % 15 != 0 ));
	then
		echo " $i"
	fi;

done


set -x

x=mississippi
grep -o "s" <<< "$x" | wc -l
