#!/bin/bash 

source scripts/file_io.sh

ARGV="$@"
ARGC=$#

help() {
    echo 

    exit 0
}

if [ $ARGC = 1 ]
    then help
fi 