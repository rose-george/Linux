#!/bin/bash
#while getopts "a:b:c:" opt 
#do
#	echo Option: $opt, Parameter: $OPTARG
#done

while getopts "a:b:c:" opt
do
	case $opt in
		a) echo Option:- $opt, Parameter:- $OPTARG;;
		b) echo Option:- $opt, Parameter:- $OPTARG;;
		c) echo Option:- $opt, Parameter:- $OPTARG;;
		*) echo "Option found";;
	esac
done	
