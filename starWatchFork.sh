#!/bin/bash
# get star、watch、fork count of apache project

cat /home/mike/graduateDesign/project|while read line;do
file="/home/mike/graduateDesign/1028/"$line".20171028"
#echo $file
#echo $line
curl --silent 'https://api.github.com/repos/apache/'$line'' -H 'Accept: application/vnd.github.preview' > "${file}"
sleep 80s
done
