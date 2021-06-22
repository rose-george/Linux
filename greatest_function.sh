#function
usage()
{
	echo "You need 3 arguments"
}

if [ $# -lt 3 ]
then
	usage;
else
	echo "The numbers are" $1, $2 and $3.
fi
greatest()
{
if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then 
	echo $1 is the greatest.
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
	echo $2 is the greatest.
else
	echo $3 is the greatest.
fi
}
greatest $1 $2 $3
	
#another method to get greatest of any numbers
#greatest()
#{
#largest=$1
#for i in $*
#do
#if [ $largest -ge $i ]
#then
#$largest=$i
#fi
#done
# echo $largest is the greatest number
