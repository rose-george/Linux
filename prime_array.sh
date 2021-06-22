#prime number using array
i=2
echo 'The prime numbers from 1-100 are:'
until [ $i -eq  100 ]
do
	a=0
	for (( j=1; j<$((i+1)); j++ ))
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
	i=$[$i+1]
done



############

for ((i=0; i<10; i++ ))
do
	echo $i
	for ((j=0; j<i; j++ ))
	do
		echo $j
		if [ $j -lt 10 ]
		then
			break 2;
		fi done
	done



