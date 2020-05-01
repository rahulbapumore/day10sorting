#! /bin/bash 

read -p "Enter value of A" a;
read -p "Enter value of B" b;
read -p "Enter value of C" c;

uc2=$(($a+$b*$c));
uc3=$(($a*$b+$c));
uc4=$((($c+$a)/$b));
uc5=$((($a%$b)+$c));
