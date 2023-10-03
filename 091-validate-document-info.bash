#!/bin/bash

mkdir -p ./tmp

cat 001-SPDX_Version__Data_License__SPDX-Identifier.txt 002-Document_Name.txt 003-SPDX_Document_Namespace.txt 004-Creator.txt 005-Created.txt > ./tmp/concat-document-info.txt

diff -u <(grep -v '^#' ./tmp/concat-document-info.txt | grep -v '^$') <(grep -v '^#' 006-SPDX_Document_Creation_Information.txt | grep -v '^$')
echo $?
