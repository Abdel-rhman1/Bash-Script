#!/bin/bash

if [ -z $1 -o -z $2 ]
then
echo "This CompareFile required Two Parameters <file1> <file2>"
exit 0
fi

file1=`md5sum $1`
file2=`md5sum $2`

IFS=' '
read -ra ADDR1 <<<$file1
read -ra ADDR2 <<<$file2

echo ${ADDR1[0]}
echo ${ADDR2[0]}


if [ $ADDR1[0] = $ADDR2[0] ]
then 
echo "These Files Are Similar"
else
echo "These Files are Differnt"
fi
# echo $file1
