#!/bin/bash


#var1="one two three four five";
#j=0; k=10;
#for i in var1
#do
#  echo $var1; echo -e $j"/t"$k;
#j++; k++; j+=2;
#done
#var2=$var1" six seven";
#echo $var2;

#----------------

# 3 fasta files determine which is DNA/RNA/protein sequences
if ( grep "ATCG" test_nucl.fa |head )
then
     echo "test_nucl.fa contains nucleotide sequences";
else
	echo "test_nucl.fa do not contain nucleotide sequences";
fi




