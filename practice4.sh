read -p "Enter user input sequence: " seq
                #Length and AT & GC content(in %)
                l=`expr length $seq`
                echo Length of sequence: $l
                nucl=( 'A' 'T' 'G' 'C' )
                count=( 0 0 0 0 )
                for((i=0;i<l;i++))
                do
                        sub=${seq:$i:1}
                        for((j=0;j<4;j++))
                        do
                                if [ $sub == ${nucl[$j]} ]
                                then
                                        count[j]=$((count[j]+1))
                                fi
                        done
                done
                at=$((count[0]+count[1]))
                gc=$((count[2]+count[3]))
                tot=$((at+gc))
                echo AT%: `echo "scale=2; $at/$tot" | bc -l`
                echo GC%: `echo "scale=2; $gc/$tot" | bc -l`

