#! /bin/bash 

read -p "Enter value of A" a;
read -p "Enter value of B" b;
read -p "Enter value of C" c;

uc2=$(($a+$b*$c));
uc3=$(($a*$b+$c));
uc4=$((($c+$a)/$b));
uc5=$((($a%$b)+$c));


declare -A  assoarray;

assoarray[uc2]=$uc2;
assoarray[uc3]=$uc3;
assoarray[uc4]=$uc4;
assoarray[uc5]=$uc5;
array=();

for ele in ${!assoarray[@]}
do
  array[i]=${assoarray[$ele]};
  i=$(($i+1));
done


for ((i = 0; i<4; i++)) 
do
      
    for((j = 0; j<4-1; j++)) 
    do
      
      k=$(($j+1));
        if [ ${array[$j]} -gt ${array[$k]} ] 
        then
            # swap

 
            temp=${array[j]} ;
            array[$j]=${array[k]};   
            array[$k]=$temp ;
        fi
    done
  

done


echo "values in ascending order  ${array[@]}";



for ((i = 0; i<4; i++)) 
do

    for((j = 0; j<4-1; j++)) 
    do

      k=$(($j+1));
        if [ ${array[$j]} -lt ${array[$k]} ] 
        then
            # swap

 
            temp=${array[j]} ;
            array[$j]=${array[k]};   
            array[$k]=$temp ;
        fi
    done
  

done

echo "values in descending order  ${array[@]}";
