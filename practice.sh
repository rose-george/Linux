#!/bin/bash
#n1=$1
#factorial=1

#for((num=1;num<=n1;num++))
#do
#	factorial=$((factorial*num))
#done
#echo "The factorial of $n1 is $factorial"


#list of odd numbers
declare -a even
declare -a odd
a=0
b=0
for((i=1;i<101;i++))
do
	if [ $((i%2)) -eq 0 ]
	then
		even[a]=$i
		a=$((a+1))
	else
		odd[b]=$i
		b=$((b+1))
	fi
done
	echo "Even numbers are ${even[@]}"
	echo "Odd numbers are ${odd[@]}"

######################

declare -a numbers
numbers=(23 4 1 3  12 43 35)
greatest=${numbers[0]}

for i in ${numbers[@]}
do
	if [ $i -gt greatest ]
	then
		greatest=$i
	fi
done
echo "The largest is $greatest" 



~                                                                             
~                                                                             
~                                                                             
~                                               

