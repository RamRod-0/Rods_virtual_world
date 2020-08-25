#!/bin/bash


numbers={0..9}

States={'NJ' 'AZ' 'NY' 'FL' 'CA'}

command_ls={ls}

for numbers in ${numbers[@]};
do

	if [ $numbers = '2' '4' '6' '8']
	then
		echo @{numbers['2' '4' '6' '8']}
	fi
done


