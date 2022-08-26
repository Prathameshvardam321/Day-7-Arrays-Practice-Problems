read -p "enter no of elements in array :- " a

echo "enter $a elements"

for((i=0;i<$a;i++))
do
	read x
 	array[$i]=$x;
done

sum=0;

for (( i=0; i<$a-2; i++ ))
do
    	for (( j=$i+1; j<$a-1; j++ ))
    	do
        	for (( k=$j+1; k<$a; k++ ))
        	do
            		if [ $((${array[i]} + ${array[j]} + ${array[k]})) == $sum ];
            		then
                		echo "The triplet is: ${array[i]} ${array[j]} ${array[k]}"
            		fi
        	done
    	done
done
