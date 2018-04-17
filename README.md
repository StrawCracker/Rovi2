Rovi2


Put resp at /home/resps/rovi2/Rovi2

To get permissions: chmod -R 777 .
from within the repsository folder


Guide:

1. Create folders /home/resps/rovi2

2. sudo chmod -R 777 .

3. git clone https://github.com/StrawCracker/Rovi2.git

4. catkin_make

	if error at robot plugin 
	
	4a. rename src/robot_plugin/package.xml to .xmll
	
	4b. catkin_make
	
	4c. change package.xml to original file name
	
	4d. catkin_make




