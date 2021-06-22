#while
i=10; 

while [ $i -gt 0 ]
do
	echo $i
	i=$[$i-1]
done


declare -a number
number=(11 77 27 56)
i= 0
len=${#number[@]}
while [ $i -lt $len ]
do
	echo ${number[i]}
	i=$[$i+1]
done


#until
a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done
