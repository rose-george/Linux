#!/bin/bash
#Assignment 2

#Q1
for i in `cd ~/Documents/CP | ls *.fa`
do
        echo $i
        j=`grep -v "^>" $i | head -1`
        count_M=`echo $j | grep 'M' | wc -l`
        count_U=`echo $j | grep 'U' | wc -l`
        if [ $count_M -eq 1 ]
        then
                echo "It is a protein file.";
        elif [ $count_U -eq 1 ]
        then
                echo "It is an RNA file.";
        else
                echo "It is a DNA file.";
        fi
done


#Q2.
mkdir DNA RNA PROTEIN
for i in `cd ~/Documents/CP | ls *.fa`
do
        echo $i
        j=`grep -v "^>" $i | head -1`
        count_M=`echo $j | grep 'M' | wc -l`
        count_U=`echo $j | grep 'U' | wc -l`
        if [ $count_M -eq 1 ]
        then
                mv $i ./PROTEIN/protein.fa;
        elif [ $count_U -eq 1 ]
        then
                mv $i ./RNA/rna.fa;
        else
                mv $i ./DNA/dna.fa;
        fi
done


#Q.3
c=1
i='./DNA/dna.fa'
k=`grep -v "^>" $i`
for j in $k
do
        l=`expr length $j`
        if [ $l -gt 1000 ]
        then
                echo $j is of length $l;
                c=$((c+1))
        fi
done

echo $c


#Q.4
i='./PROTEIN/Protein.fa'
k=`grep "^M" $i`
for ghghgh in $k
do
        echo $ghghgh
done


#Q.5
i='./RNA/RNA.fa'
j=`grep -v "^>" $i`
c=1
for k in $j
do
        l=`echo $k | head -c100`
        m=`echo $k | tail -c101`
        echo "sequence $c (first 100) : $l"
        echo "sequence $c (last 100) : $m"
        c=$((c+1))
done


#Q.6

i='./DNA/dna.fa'
grep -v '^>' $i | grep "^ATG" | grep -E "TAA$|TAG$|TGA"




#Q.7
i='./RNA/RNA.fa'
j=`grep -v "^>" $i | grep "^AUG"`
for k in $j
do
        echo $k | fold -w 3 | xargs echo

done


