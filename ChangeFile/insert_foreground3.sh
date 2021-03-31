#!/bin/bash
FILE="/root/some/Folder/For/test.txt"
PH="##PLACEHOLDER##"
INSERTED=$(sed -n 3p $FILE)
while [ $INSERTED != $PH ] ;
do
    sleep 1
    INSERTED=$(sed -n 3p $FILE)
done