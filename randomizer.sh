#!/bin/bash
nuid=$((10#$1))
sc1=$(( $nuid % 15))
sc1=$(( 2 * $sc1))
echo -e "Thanks, your email is: $2, \nand your 9 programs to work with are:"
for (( c=1; c<10; c++ ))
do
        increment=$(( 2 * $c))
        code=$(($(($sc1 + $increment)) % 32))
        if [[ $code -lt 10 ]]
        then
        echo "$c. code110$code.c"
        else
        echo "$c. code11$code.c"
        fi
done

