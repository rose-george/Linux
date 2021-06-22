#11. Pass a string as an argument to a function and split & store each letter as a separate value of array and return the array. Print with index outside function.

#read -p "Enter the string" str
#strfun()
#{
	#for (( i=0; i<${#str}; i++ ))
	#do
	#char[$i]=${str:i:1}
#done
#echo ${char[@]}
#}

#declare -a char
#strfun $str
#for (( i=0; i<${#char[@]}; i++ ))
#do 
	#echo "The index is" $i "for" ${char[$i]}
#done

#-------------------------------------------------

#14.Pass a list of numbers as an array to a function and sort the array. Return the minimum & maximum values to another variable.

#num=(45 83 22 9 97)
#echo "Input array:" ${num[@]}
#sort()
#{
	#for ((i=0; i<5; i++))
	#do
		#for ((j=0; j<5-i-1; j++ ))
		#do
			#if [ ${num[$j]} -gt ${num[$((j+1))]} ]
			#then
				#swap
				#temp=${num[$j]}
				#num[$j]=${num[$((j+1))]}
				#num[$((j+1))]=$temp
			#fi
		#done
	#done
#}

#sort ${num[@]}
#echo "The sorted array is:" ${num[@]}
#echo "The smallest number is:" ${num[0]}
#echo "The greatest number is:" ${num[4]}

#-------------------------------------------------------


#15. Get user input as year (eg.2018) and use a function to check if it's leap year or not. Depending upon that print number of days each month has/had.

#read -p "Enter the year: " year
#if [ $((year%400)) -eq 0 ]
#then
	#echo "It is a leap year."
#elif [ $((year%100)) -eq 0 ]
#then
	#echo "It is not a leap year."
#elif [ $((year%4)) -eq 0 ] 
#then
	#echo "It is a leap year."
#else
	#echo "It is not a leap year."
#fi

#-------------------------------------------------------

#16. Write two functions where one will print reverse of a number (cannot treat them as a string and other to print reverse of string. Depending on user input call the right function.

#revnum()
#{
	#echo $1 | rev
#}
#revstr()
#{
	#echo $2 |rev
#}
#read -p "Enter the value: " value
#if [ $((num/1)) ]
#then
	#revnum $value
#else
	#revstr $value
#fi

#--------------------------------------------------------

#17. Write a function which will check password strength. Write individual functions to check
#a. Length of password
#b. Special characters
#c. Numbers used or not
#d. Usage of capital letter.

#len()
#{
	#l=${#1}
	#echo "The length is" $l
	#if [ $l -gt 8 ]
	#then
		#((strength+=25))
	#fi
#}
#char()
#{
	#c=`echo $1 | grep [!-+]`
	#if [ $c ]
	#then
		#echo "Password contains special characters."
		#((strength+=25))
	#else 
		#echo "The password doesn't contain special characters."
	#fi
#}
#num()
#{
	#n=`echo $1 | grep [0-9]`
	#if [ $n ]
	#then
		#echo "The password contains numbers."
		#((strength+=25))
	#else
		#echo "The password doesn't contain numbers."
	#fi
#}
#cap()
#{
	#a=`echo $1 | grep [A-Z]`
	#if [ $a ]
	#then
		#echo "The password contains capital letters."
		#((strength+=25))
	#else
		#echo "The password doesn't contain capital letters."
	#fi
#}
#strength=0
#read -p "Enter the password: " pswd
#len $pswd
#char $pswd
#num $pswd
#cap $pswd
#echo "The password is" $strength "% strong."

#--------------------------------------------------

#18. Calculate factorial of a number using recursive function.
#factorial()
#{ 
	#num=$1
	#if [ $1 -eq 1 ] | [ $1 -eq 0 ]
	#then
		#echo 1
	#else
		#next=$((num - 1))
		#intg=`factorial $next`
		#fa=$((num * intg))
		#echo $fa
	#fi
#}
#read -p "Enter the num:" num
#factorial $num

#-----------------------------------------------

#19.Write a function which will read all the files in a particular folder and segregate files & directories and report to the user.

#for i in `ls`
#do
	#if [ -d /home/ibab/Documents/CP/Assignment4/$i ]
	#then
		#echo $i is a directory;
	#elif [ -f /home/ibab/Documents/CP/Assignment4/$i ]
	#then
		#echo $i is a file;
	#fi
#done

#-------------------------------------------

#20. Write a program that will run even if any of the trap signals are given as keyboard interrupt by the user.

#trap "echo user is interuppting" SIGINT
#for((i=0;i<1000000000000000000;i++))
#do
#        echo $i
#        sleep 10
#done
#
#trap -- SIGINT












