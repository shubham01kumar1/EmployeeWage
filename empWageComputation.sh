#! /bin/bash -x

echo "Welcome to employee wage problem"
# contant
IS_PRESENT=1

# variable
empCheck=$(( RANDOM % 2 ))

#selection
if [ $empCheck -eq $IS_PRESENT ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
