#notes
# getting on same line: echo -n ".." date 
#saving output in a file: command > filename
#input: takes content of a file and redirects to an output
#square brackets: 
var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo $var4

#BASH CALCULATOR
var5=$(echo "scale=4; 3.44 / 5" | bc)
echo $var5

#checking directory
dir=/home/ibab/Documents
if [ -d $dir ]
then
echo "It exists."
else
	echo 'It doesnt.'
fi

#checking either file or directory
location=$HOME
file="mm39.fa"
if [ -e $location ]
then
	echo 'exists'
	echo 'check file'
	if [ -e $location/$file ]
	then
		echo 'file exists'
	else
		echo ' no file'
	fi
else 
	echo 'no directory'
fi

# -r file: if exists and readable
# -s file: exists and not empty
# -w file: exists and writable
# -o file: exists and owned by current user


#double parentheses
val1=10
if (( $val1 ** 2 > 90 ))
then
	((val2= $val1 ** 2))
	echo "Square of $val1 is $val2."
fi

#FOR
#to read a list
for test in I am "Rose Maria George"
do
	echo "word:$test"
done

#CONTROLLING THE LOOP
#BREAK
#a=10
#while [ $a -gt 0 ]
#do
#	echo "Outer loop: $a"
#	   $a= $[ $a - 1 ]
#
#	for (( b=1; b<100; b++ ))
#	do
#
#		
#		if [ $b -eq 5 ]
#		then
#			break
#		fi
#		echo "Inner loop: $b"
#		
#	done
 #       #$a= $[ $a - 1 ]
#done


##################################

#POSITIONAL PARAMETERS
while getopts "d:e:f:" op
do
	case $op in
		d) n1=$OPTARG;;
		f) n2=$OPTARG;;
		e) case $OPTARG in
			+) res=$((n1+n2));;
			-) res=$((n1-n2));;
		esac
esac
done
echo $res







