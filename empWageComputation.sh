#! /bin/bash -x

# contant
IS_PRESENT=1
WAGE_PER_HR=20
# variable
empCheck=$(( RANDOM % 2 ))

#selection
if [ $empCheck -eq $IS_PRESENT ]
then
	empHrs=8
	salary=$(( empHrs * WAGE_PER_HR ))
else
	salary=0
fi
