#31. Calculate sum of a particular column and print it at the end of reading the file.
#cat marks.txt | awk '{sum+=$2} END{print "Sum is",sum }'

#-----------------------------------

#32. Print lines from a file when it has more than three columns.

cat newtxt.txt | awk '$4!=""'

#33.# print only lines which length greater than 15
 
cat newtxt.txt | awk 'length > 15'

#34.print percentage of marks as new column

cat marks.txt | awk '{print $1,$2, $3=$2*100/100"%"}'

#35. print subjects greater than 40 and less than 55

cat marks.txt | awk '{if (($2 > 40) && ($2 < 55)) print $1,$2 }'

#36. print pass or fail alongside

cat marks.txt | awk '{ $3=$2*100/100"%";if ($3 >= 50 ) { print $1,$2,$3,"Pass"} else { print $1,$2,$3,"Fail"} }'
~

#37. replace marks with pass or fail along with percentage

cat marks.txt | awk '{ $3=$2*100/100"%";if ($3 >= 50 ) { print $1,"Pass",$3} else { print $1,"Fail",$3} }'

#38. print /etc/passwd file tab seperated 

head /etc/passwd| sed 's/:/\t/g'

#39. awk string functions 

awk 'BEGIN { str="hello hi"; print "length is",length(str); }' #length
awk 'BEGIN {strg="hello hi";subg=substr(strg,1,4);print subg}' #extract substring
awk 'BEGIN {val="hello hi"; newval=toupper(val); print newval }' #to uppercase
awk 'BEGIN {val="HELLO HI"; newval=tolower(val); print newval }' #to lowercase
~

#40. awk to see whether number is odd/even

read -p "Enter the number:" num
awk -v num=$num 'BEGIN { if(num%2 == 0) print "even";else print "odd" }'
~
