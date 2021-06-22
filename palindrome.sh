#!/bin/bash
#To check if a string is a palindrome or not.
a="malayalfhfhftgffam"
len=`echo $a | wc -c`
flag=0
for (( i=1,j=($len-1); i<=len; i++,j-- ))
do
	first=`expr substr $a $i 1`
	last=`expr substr $a $j 1`
#	echo $first" "$last;
	if [ "$first" != "$last" ]
	then
		flag=1;
		break;
	fi
	
done
if [ $flag -eq 1 ]
then
	echo 'It is not a palindrome.'
else
	echo 'It is a palindrome.'
fi

	
