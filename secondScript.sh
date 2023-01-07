#!/bin/bash

TARGET_DIRECTORY="/home/ubuntu/bsm"
LOG_FILE="/home/ubuntu/bsm/file2.txt"

function getTime{
TIME=$(date +"%Y-%m-%d %T")
echo $TIME
}

function addText{
    echo "hello i am iclal. that is my project." >> /home/ubuntu/bsm/file2.txt
}

function printDifferences{
    c=`cat $LOG_FILE | wc -c`
    w=`cat $LOG_FILE | wc -w`
    l=`grep -c "." $LOG_FILE`
    echo Number of charachters $c
    echo Number of words $w
    echo Number of lines $l
}

while :
do 
addText
getTime
printDifferences
sleep 7

done