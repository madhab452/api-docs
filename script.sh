#!/bin/bash 

# find and generate docs for all .json 
find . -name "*.json" -print0 | while read -d $'\0' file
do
    fname="$(basename -- ${file})"
    fname_m="${fname%?????}" ## remove .json from filename 
    redoc-cli bundle ${file} -o build/${fname_m}.html
done

tar -czvf build.tar.gz ./build && rm -rf build
