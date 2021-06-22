#!/bin/bash
 echo "Enter limit:"
                read l
                n1=0
                n2=1
                echo "Fibonacci series:"
                echo $n1
                echo $n2
                for((i=2;i<=l;i++))
                do
                        n3=$((n1+n2))
                        echo $n3
                        n1=$n2
                        n2=$n3
                done


#Ones, tens, hundreds and thousands place
read -p "Enter the number" num
len=`expr length $num`
declare -a digits
place=(Ones Tens Hundreds Thousands)
while [ $num -ne 0 ]
do
	a=$((num%10))
	digits+=($a)
	num=$((num/10))
done
for((i=0; i<len; i++))
do
	echo ${digits[$i]} : ${place[$i]}
done

 #triangles
 read -p "Enter depth" d
 for((i=1; i<=d; i++))
 do
	 for((j=1; j<=i; j++))
	 do
		 echo -ne "*"
	 done
	 echo -e "\n"
 done
 a=$n
                d=1
                for((i=1;i<=n;i++))
                do
                        for((k=a-1;k>0;k--))
                        do
                                echo -ne "\t"
                        done
                        for((j=1;j<=i;j++))
                        do
                                echo -ne "\t$d\t"
                                d=$((d+1))
                        done
                        echo -e "\n"
                        a=$((a-1))
                done
                for((i=1;i<=n;i++))
                do
                        for((j=1;j<=i;j++))
                        do
                                echo -ne $j
                        done
                        echo -e "\n"
                done


#ARRAYS
declare -a names
read -p "Enter length" l
echo "Enter elements"
for((i=0; i<l; i++))
do
	read a
	names[i]=$a
done
echo -ne 'Index\tValue\n'
for((j=0;j<l; j++))
do
	echo -ne $j'\t'${names[$j]}'\n'
done

#search array
arr=(1 2 3 4 5 6 7 8 9)
read -p "enter element to be searched" e
len=${#arr[@]}
echo $len
for((i=0;i<len;i++))
do
	if [ ${arr[$i]} -eq $e ]
	then
		echo "Index: $i"
		break
	fi
done








