#To get sum and mean of numbers in an array
#declare -a number
#number=(12 45 67)
#sum=0
#len=${#number[@]}
#for j in ${number[@]}
#do
	#sum=$((sum+j))
#done
#echo The sum of the numbers in the array is $sum
#m=$((sum/len))
#echo The mean of the numbers in the array is $m 
#Here, j is the element in the array. And sum is just $((sum+j)).
#If the index is used, for loop will become:
#for (j=0; j<len; j++)
#do
#sum=$((sum+${number[j]}))



#Nucelotide content of a sequence.
seq="AGTCGAGTCGATCGTA"
a=0
t=0
c=0
g=0
len=`expr length $seq`
echo The length of the sequence is $len
for ((i=0; i<len; i++))
do
	#Here, since a string is being used, to read through the whole string, use a substring. 
	r=${seq:$i:1}
	if [ $r == "A" ]
	then
		a=$((a+1))
	elif [ $r == "T" ]
	then
		t=$((t+1))
	elif [ $r == "C" ]
	then
		c=$((c+1))
	elif [ $r == "G" ]
	then
		g=$((g+1))
	fi
done
echo A=$a T=$t G=$g C=$c 
pA=`scale=3; echo $a*100/$len | bc`
pC=`echo "scale=3; $c*100/$len" | bc`
pT=`echo "scale=3; $t*100/$len" | bc`
pG=`echo "scale=3; $g*100/$len" | bc`
echo $pA
echo $pC
echo $pT
echo $pG
