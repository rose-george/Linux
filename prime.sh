#!/bin/bash
#To check whether the given number is a prime number
for (( i=2; i<101; i++ ))
do
	a=0 
	for (( j=1; j<=i; j++ ))
	do
		if [ $((i%j)) -eq 0 ]
		then
			a=$((a+1))
		fi
	done
	if [ $a -eq 2 ]
	then
		echo $i
	fi
done



			
