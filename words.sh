#numbers to words-array method
num=11234
len=`expr length $num` 
#initialize array of face values
fval=('ones' 'tens' 'hundreds' 'thousands' 'ten thousands' 'lakhs')
declare -a digs            #this is an array containing all digits
for ((i=$(($len-1)); i>=0; i--))
do
	dig=$(($num%10))   #extract last digit of number(current number)
	num=$(($num/10))   #update number by dropping last digit
	digs+=($dig)       #append last digit to digits array
done
#echo ${digs[@]} #This is the array of all the digits in order same as fval array
for ((i=$(($len-1)); i>=0; i--))
do
	echo ${digs[$i]} ${fval[$i]}
done


#another method-using case
echo Enter the number
read num
l=`expr length $num`
i=0
#num=`echo $num | rev`
while [ $i -ne $l ]
do
	n=$((num%10))
	case "$i" in
		3) echo -e $n Thousands;;
		2) echo -e $n Hundreds;;
		1) echo -e $n Tens;;
		0) echo -e $n Ones;;
	esac
	num=$((num/10))
	i=$((i+1))
done
