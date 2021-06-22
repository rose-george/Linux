#!/bin/bash
#palindrome using while
a="AGGA"
len=`echo $a | wc -c`
flag=0
i=1; j=$len-1;
while [ $i -lt $len ]
do
	first=`expr substr $a $i 1`
	last=`expr substr $a $j 1`
	
	if [ $first != $last ]
	then flag=1;
	       break;
	fi
	i=$[$i+1]
	j=$[$j-1]
done
if [$flag -eq 1 ]
then
	echo 'Palindrome'
else
	echo 'Not  palindrome'
fi

