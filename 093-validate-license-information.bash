#!/bin/bash

mkdir -p ./tmp

cat 031-License_Name.txt 032-License_ID.txt 033-Extracted_Text.txt 034-Extracted_Comment.txt > ./tmp/concat-license-information.txt

diff -u <(grep -v '^#' ./tmp/concat-license-information.txt | grep -v '^$') <(grep -v '^#' 035-Other_Licensing_Information_Detected.txt | grep -v '^$')
echo $?
