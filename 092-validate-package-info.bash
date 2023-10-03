#!/bin/bash

mkdir -p ./tmp

for f in 011-Package_Name.txt 012-Package_SPDX_Identifier.txt 013-Package_Version.txt 014-Package_File_Name.txt 015-Package_Download_Location.txt 016-Files_Analyzed.txt 017-Package_Home_page.txt 018-Concluded_License__Declared_License.txt 019-Comments_on_License.txt 020-Copyright_Text.txt 021-Package_Comment.txt
do
    awk '/### original_component/{ flag=1; next } /### oss_component1/{ flag=0 } flag' $f >> ./tmp/original_component.txt
    awk '/### oss_component1/{ flag=1; next } /### oss_component2/{ flag=0 } flag' $f >> ./tmp/oss_component1.txt
    awk '/### oss_component2/{ flag=1; next } flag' $f >> ./tmp/oss_component2.txt
done

cat ./tmp/original_component.txt ./tmp/oss_component1.txt ./tmp/oss_component2.txt > ./tmp/concat-package-info.txt

diff -u <(grep -v '^#' ./tmp/concat-package-info.txt | grep -v '^$') <(grep -v '^#' 022-Package_Information.txt | grep -v '^$')
echo $?
