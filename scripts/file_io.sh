#!/bin/bash

FILES=()
FILE_COUNT=0
FILE_POS=()

fopen() {
    local path="$1"

    if [ ! -f "$path" ]
        then return 1
    fi

    FILE_COUNT=$(expr $FILE_COUNT + 1)
    FILE_POS[$FILE_COUNT]=0
    FILES[$FILE_COUNT]="$path=$FILE_COUNT"

    echo "$FILE_COUNT"
    return 0
}