#!/bin/bash
set -x

rm -rf ./tmp
mkdir -p ./tmp

./091-validate-document-info.bash
./092-validate-package-info.bash
./093-validate-license-information.bash

cat ./tmp/concat-document-info.txt ./tmp/concat-package-info.txt ./tmp/concat-license-information.txt > ./tmp/concat-spdx-lite-document.txt
diff -u <(grep -v '^#' ./tmp/concat-spdx-lite-document.txt | grep -v '^$') <(grep -v '^#' 041-spdx-lite-document.txt | grep -v '^$')
echo $?
