# ox-cloud-user-loop
shell script to create a loop around Wolfgangs' python scripts

please provide these 5 variables:
1. Context ID
2. user count start
3. company name
4. Access combination number
	1.for cloud_pim
	2.for cloud_productivity
	3.for cloud_productivity_security
5. user count end

example usage:  
./create-users.sh 12345 1 aruba 2 3  
Context ID: 12345  
user count start: 1  
company name: aruba  
Access combination number: 2  
resulting Access combination name: cloud_productivity  
resulting commandline: python3 createuser.py -c 12345 -e demo.aruba@oxcloud-demo.de -p secret -g demo1 -s aruba -q1000 -a cloud_productivity --editpassword  
Continue? (Y/N): y  
python3 createuser.py -c 12345 -e demo1.aruba@oxcloud-demo.de -p secret -g demo1 -s aruba -q1000 -a cloud_productivity --editpassword  
python3 createuser.py -c 12345 -e demo2.aruba@oxcloud-demo.de -p secret -g demo1 -s aruba -q1000 -a cloud_productivity --editpassword  
python3 createuser.py -c 12345 -e demo3.aruba@oxcloud-demo.de -p secret -g demo1 -s aruba -q1000 -a cloud_productivity --editpassword  

