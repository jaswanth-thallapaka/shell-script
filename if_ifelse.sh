#!/bin/bash
#
#
#if condition
#
#syntax:
#if [condition]
#then
#  command to execute
#fi
#
#set -x
set -e
set -o pipefail


num=10

if [ $num -gt 5 ]   # -gt (or) > can be used
then
   echo " num is greater than 5"
fi


# if else condition
#
if [ $num -gt 11 ]
then
	echo " num is greater than 11"
else
	echo " num is less than 11"
fi


# for loop condition
#
#
for ((i; i<=10;i++))
do
	echo " $i "
done


# until condition
#it run the command until its true
#syntax:
#
#until [ condition ]
#do
    # commands to execute
#done

until [ $num -gt 11 ]
do
	echo "number is $num "
	((num++))
done


#select condition:  The select statement is used to create a simple menu system where the user can choose from a list of options.

#sytax:
#
#select var in option1 option2 option3
#do
    # commands to execute based on selection
#    break  # exit the loop (optional)
#done

select vehicle in "one-wheeler" "two-wheeler" "three-wheeler"
do
	echo " you select $vehicle"
	break
done
