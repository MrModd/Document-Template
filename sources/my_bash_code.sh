#!/bin/bash

if [ -e "number.txt" ]
then
	NUM="$(cat number.txt)"
	if [[ $NUM -lt "42" ]]
	then
		echo "<"
	else
		echo ">="
	fi
fi
