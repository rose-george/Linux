#1. Check for the number of arguments and have a function that will print usage of a program.
#arguments()
#{
	#len=$#
	#sum=0
	#for i in $@
	#do
		#((sum+=$i))
	#done
	#echo 'The number of arguments is' $len
	#echo 'The sum of arguments is' $sum
#}
#arguments $@

#--------------------------------------------------------

#3.Write a function to check if the program is executed from the correct working directory. If not print the current directory from which the program needs to be executed.
#dir="home/ibab/Desktop"
#if [ `pwd`= $dir ]
#then
	#echo 'It is the correct working directory.'
#else
	#echo "The current directory is `pwd`. The correct directory is" $dir
#fi

#--------------------------------------------------------------

#4.Get multiple user input as positional parameter & read them using shift command.
#useshift()
#{
	#while [ "$2" != "" ]
	#do
		#echo $2
		#shift
	#done
#}
#useshift $@

#------------------------------------------------------------

#5.Try shifting the arguments so that only odd (1,3,5,7th input) or (2,4,6,8th input) are read and inbtw ones are ignored.

#useshift()
#{
	#while [ "$2" != "" ]
	#do
		#echo $2
		#To print odd numbers, echo $1. For even numbers, echo $2. 
		#shift 2
	#done
#}
#useshift $@

#-----------------------------------------------------------------

#6. Make a calculator with all the possible math operations as separate functions and based on user input call the appropriate function and display the output

#read -p "Enter the operation" sign
#sum()
#{
	#for i in $@
	#do
		#((sum+=i))
	#done
	#echo "The sum is" $sum
#}

#diff()
#{
	#for i in $@
	#do
		#((diff=$1-$2))
	#done
	#echo "The difference is" $diff
#}
#prod()
#{
	#prod=1
	#for i in $@
	#do
		#((prod*=$i))
	#done
	#echo $prod
#}
#div()
#{
	#var=`echo "scale=3;$1/$2" | bc`
	#echo $var
#}

#if [ $sign = "+" ]
#then
	#sum $@
#elif [ $sign = "-" ]
#then
	#diff $@
#elif [ $sign = "*" ]
#then
	#prod $@
#else
	#div $@
#fi

#------------------------------------------------

#7. Write a function which gets user input and call this function inside another function in which you print them. (calling function inside a function)

#input2()
#{
	#echo "The parameters are:" $@
#}
#input1()
#{
	#read -p "Enter inputs" num1 num2
	#input2 $num1 $num2
#}
#input1

#---------------------------------------------------------

#8. Pass five arguments to a function and assign them to a local variable and print them in order.
#arg()
 #{
 #local arg1=$1
 #echo $arg1
 #local arg2=$2
 #echo $arg2
 #local arg3=$3
 #echo $arg3
 #local arg4=$4
 #echo $arg4
 #local arg5=$5
 #echo $arg5
 #}
#arg $@
#echo $arg1
#Since arg 1 is a local variable, it will not be available outside the function. Hence, it won't be printed.

#-------------------------------------------------

#9. Write a function to check greater than 3 numbers & greater than 2 numbers as separate functions. Based on the number of user inputs, call the appropriate functions.

#read -p "Enter the numbers: " num1 num2 num3
#gre3()
#{
        #if [ $1 -gt $2 ] && [ $1 -gt $3 ]
        #then
                #echo $1 is the greatest number.
        #elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
        #then
                #echo $2 is the greatest number.
        #else
                #echo $3 is the greatest number.
        #fi

#}
#gre2()
#{
        #if [ $1 -gt $2 ]
        #then
                #echo $1 is the greatest number.
        #else
                #echo $2 is the greatest number.
        #fi
#}

#if [ "$num3" != "" ]
#then
        #gre3 $num1 $num2 $num3
#else
        #gre2 $num1 $num2
#fi

#---------------------------------------------------

#10. Do 7th question where it will return the value to another variable and print it.

input2()
{
	echo "The parameters are:" $@
}
input1()
{
	read -p "Enter the numbers:" num1 num2
	a=`input2 $num1 $num2`
}
input1
echo $a












