#!/bin/bash -x

# contant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
MAX_WORK_DAYS=20
totalWorkHR=0
for ((day=1;day<=20;day++))
do
	#variable
	empCheck=$(( RANDOM %3 ))
	#selection
	case $empCheck in
		$IS_PRESENT_FULL_TIME )
			empHrs=8;;
		$IS_PRESENT_HALF_TIME )
			empHrs=4;;
		*)
			empHrs=0
	esac
	#calculation
	totalWorkHR=$((totalWorkHR + empHrs ))
	salary=$(( empHrs * WAGE_PER_HR ))
done
totalsalary=$(( totalWorkHR * WAGE_PER_HR ))
