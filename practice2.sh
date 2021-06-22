#!/bin/bash
declare -a numbers
numbers=(23 4 1 3  12 43 35)
greatest=${numbers[0]}

for i in ${numbers[@]}
do
        if [ $i -gt $greatest ]
        then
                greatest=$i
        fi
done
echo "The largest is $greatest" 

str="ROSE"
len=`expr length $str`
for((i=$((len-1)); i>=0; i-- ))
do
	reverse=${str:$i:1}
	echo -n $reverse
done
echo -e "\n"

#palindrome
a="malayalam"
len=`expr length $a`
flag=0
for (( i=1, j=$((len)); i<=j; i++, j-- ))
do
	#for string, start for loop with 1 instead of 0
	first=`expr substr $a $i 1`
	last=`expr substr $a $j 1`
	#if using substr using curly bracket:
	#i=0,j=$((len-1)) in for loop
	#first=${a:$i:1}
	#last=${a:$j:1}
	#echo $first" "$last;
	if [ "$first" != "$last" ]
	then
		flag=1
	#else
	#	flag=1
		break
	fi
done
if [ $flag -eq 1 ]
then
	echo 'It is not a palindrome'
else
	echo 'It is a palindrome'
fi


echo 'Enter the string'
read string
len=`expr length $string`
if [ $len -ne 0 ]
then
        echo 'It is not an empty string.'
elif [ $len -eq 0 ]
then
        echo 'It is an empty string.'
fi


#swapping 2 numbers
read -p "Enter 1st number" n1
read -p "Enter 2nd number" n2
temp=$n1
n1=$n2
n2=$temp
echo "The numbers are $n1 and $n2"

read -p "Enter radius" r
echo "perimeter is"
echo "scale=3; 3.14*2*$r" | bc

#checking if prime
read -p "Enter the number" num
count=0
for((j=1; j<=num; j++))
do
	if [ $((num%j)) -eq 0 ]
	then
		count=$((count+1))
	fi
done
if [ $count -eq 2 ]
then
	echo "It is a prime number."
else
	echo "It is not a prime number."
fi








