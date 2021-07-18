#!/bin/bash -x

declare -a dailyWage

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
MAX_WORK_DAYS=20
MAX_WORK_HR=70

totalWorkHR=0
day=0

function getWorkHR(){
	local emp=$1
	local empHrs=0
	#selection
	case $emp in
		$IS_PRESENT_FULL_TIME)
			empHrs=8;;
		$IS_PRESENT_HALF_TIME)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	echo $empHrs
}

function getEmpWage() {
	local empHr=$1
	echo $((empHr * WAGE_PER_HR))
}
while [ $day -lt $MAX_WORK_DAYS ] && [ $totalWorkHR -lt $MAX_WORK_HR ]
do
	#variable
	empCheck=$(( RANDOM % 3 ))
	#calling a function
	empHrs="$( getWorkHR $empCheck )"
	#calculation
	totalWorkHR=$(( totalWorkHR + empHrs ))
	#storing daily
	dailyWage[$day]="$(getEmpWage $empHrs)"
	((day++))
done

totalSalary=$((totalWorkHR * WAGE_PER_HR ))
echo ${dailyWage[@]}
