#!/bin/bash
cat /home/mike/graduateDesign/projNameList|while read line;do
  file="/home/mike/graduateDesign/1108/1stCommitPage/"$line".1stCommitPage"
  curl --silent -H "Authorization: token fdfb99abb83325b8c47c178eea7fbee411dce62a" -i "https://api.github.com/repos/apache/"$line"/commits?page=1&per_page=100" > "${file}"
  sleep 1s
done
