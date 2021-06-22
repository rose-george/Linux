#!/bin/bash
var1=4
if [ $var1 -gt 5 ]
then
     echo $var1 "is greater than 5";
else
     echo $var1 "is less than 5";
fi

#------------

var2="Sike"
if [ $var2 = "Sike" ]
then
	echo "It is the same word";
else
        echo "It is not the same word";
fi

#-----------------

if [ -f ./Shell_script.odt ]
then
	echo "The file exists";
fi

#-------------------------

if [ -d /home/ibab/Documents/ ] && [ -f ./Shell_scripts.odt ]
then
	echo "Both directory and file exist";
else
	echo "One of them do no exist";
fi	

#--------------------

if [ -d /home/ibab/Documents/CP/ ]
then
	if [ -f ./25-35mer_to_piRNA_v2.aln ]
	then
		echo "The file exists";
	fi
fi

#--------------------

for (( i=1 ; i<11 ; i++ ))
do
	echo $i
done	

#------------------
for i in 'ls -l | cut -f3 $



