#Making a shell script
d=`date`
echo $d

#To show current directory
homdir=`pwd`
echo $homdir

#Current user name and user ID
usrnam=`who`
echo $usrnam

h=`env | grep "HOME"`
echo $h

var1="Random"
expr length $var1

$[2*10]
var3=fghfhd
echo $(expr length "$var2") 


