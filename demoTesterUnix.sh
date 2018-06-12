#!/bin/bash
echo "path of demo        error level (0 success) > testResults.txt"
for cc3dproj in ./Demos/*/*.cc3d do (
	sh ./runScript.sh -i %cc3dproj --noOutput -f 10000000000 --exitWhenDone &\
	echo %cc3dproj      %$ >> testResults.txt
)
exit 