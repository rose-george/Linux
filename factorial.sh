#To find factorial
echo Enter number 
read num
for ((i=$((num-1)); i>0; i--))
do
	num=$((i*num))
done
echo $num


##############

var=10
for ((i=1; i<10; i++))
do
	for ((j=1; j<i; j++))
	do
		echo -ne "$j\t"
	done
	echo -e ""
done



