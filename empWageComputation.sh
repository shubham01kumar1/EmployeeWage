#!/bin/bash -x
declare -A dailyWage

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
MAX_WORK_DAYS=20
MAX_WORK_HR=70

totalWorkHR=0
day=1

function getworkHR(){
	local emp=$1
	local empHrs=0
	#selection
	case $empCheck in
		$IS_PRESENT_FULL_TIME)
			empHrs=8;;
		$IS_PRESENT_HALF_TIME)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	echo $empHrs
}

while [ $day -le $MAX_WORK_DAYS ] && [ $totalWorkHR -lt $MAX_WORK_HR ]
do
	#variable
	empCheck=$(( RANDOM % 3 ))
	#calling a function
	empHrs="$( getworkHR $empCheck )"
	#calculation
	totalWorkHR=$(( totalWorkHR + empHrs ))
	#storing daily wages to an dictionary of key contains day_(1-20)
	dailyWage[$day]=$((empHrs * WAGE_PER_HR))
	((day++))
done
totalSalary=$(( totalWorkHR * WAGE_PER_HR ))
echo "day:       "${!dailyWage[@]}
echo "dailyWages:"${dailyWage[@]}
