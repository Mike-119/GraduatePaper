#!/bin/bash
cat /home/mike/graduateDesign/projNameList|while read line;do
  file="/home/mike/graduateDesign/1108/1stCommitPage/"$line".1stCommitPage"
  pageNum=$(cat "$file"|grep Link:|awk -F'[;]' '{print $2}'|awk -F'[?&]' '{print $2}'|awk -F'[=]' '{print $2}')
  if [[ -n "$pageNum" ]];then     
     while [ $pageNum -gt 0 ]
     do
#     echo $pageNum
     curl --silent -H "Authorization: token fdfb99abb83325b8c47c178eea7fbee411dce62a" "https://api.github.com/repos/apache/"$line"/commits?page=pageNum&per_page=100" > "/home/mike/graduateDesign/1108/allCommitPages/"$line"."$pageNum""
     sleep 1s
     ((pageNum--))
     done
  fi
done
