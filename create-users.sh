#!/bin/bash
if [ $# -ne 5 ]
   then
     echo "please provide these 5 variables:"
     echo "1 Context ID"
     echo "2 user count start"
     echo "3 company name"
     #echo "4 Access combination name"
     echo "4 Access combination number"
     echo "	1 for cloud_pim"
     echo "	2 for cloud_productivity"
     echo "	3 for cloud_productivity_security"
     echo "5 user count end"
     exit 1
fi

if [ $4 -eq 1 ]
   then
     acn=cloud_pim 
elif [ $4 -eq 2 ]
   then
     acn=cloud_productivity
elif [ $4 -eq 3 ]
   then
     acn=cloud_productivity_security
else
   echo "wrong number for access combination name provided. Correct values are 1,2 or 3!!!"
   exit 1
fi

# print the variables, which will be used:
echo "Context ID: $1"
echo "user count start: $2"
echo "company name: $3"
echo "Access combination number: $4"
echo "resulting Access combination name: $acn"
echo "resulting commandline: python3 createuser.py -c $1 -e demo$i.$3@oxcloud-demo.de -p secret -g demo$2 -s $3 -q1000 -a $acn --editpassword"

read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

#read -p -r "Please confirm correct parameters: [Y/y] " confirm
#echo $confirm
#if [ "$confirm" != "Y" ] || [ "$confirm" != "y" ]
#   then echo "please re-enter values"
#   exit 1
#fi

i=$2
while [ $i -le $5 ]
do
	echo "python3 createuser.py -c $1 -e demo$i.$3@oxcloud-demo.de -p secret -g demo$2 -s $3 -q1000 -a $acn --editpassword"
	# python3 createuser.py -c $1 -e demo$i.$3@oxcloud-demo.de -p secret -g demo$2 -s $3 -q1000 -a $acn --editpassword
	sleep 1
	((i++))	
done
