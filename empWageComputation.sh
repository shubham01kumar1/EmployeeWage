#!/bin/bash -x

# contant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
# variable
empCheck=$(( RANDOM % 3 ))

#selection
case $empCheck in
	$IS_PRESENT_FULL_TIME)
		empHrs=8;;
	$IS_PRESENT_HALF_TIME)
		empHrs=4;;
	*)
		empHrs=0;;
esac
#calculation
salary=$(( empHrs * WAGE_PER_HR ))
