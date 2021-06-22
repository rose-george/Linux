#!/bin/bash
#To arrange the elements in ascending order
declare -a nos
nos=(11 56 74 38 99 21 3 27)
len=${#nos[@]}
for ((i=0; i<=$len; i++))
do
	for ((j=i+1; j<=$len; j++))
	do
		if [[ ${nos[i]} -lt ${nos[j]} ]]
		then
			temp=${nos[i]}
			nos[i]=${nos[j]}
			nos[j]=$temp 
		fi
	done
done

echo ${nos[@]}

