#!/bin/bash 

# find and generate docs for all .json 
find ./gen -name "*.json" -print0 | while read -d $'\0' file
do
    fname="$(basename -- ${file})" # eg. bar.swagger.json
    fname_html=$(echo ${fname} | sed "s/swagger.json/html/") #bar.html

    if [! -d "./build"]; then
        mkdir build
    fi

    redoc-cli bundle ${file} -o build/${fname_html}
    echo ${fname_html}
done

tar -czvf build.tar.gz ./build && rm -rf build
