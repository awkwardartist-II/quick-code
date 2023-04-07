#!/bin/sh

VIM=
LANG=


find_vim () {
    local vims="vi vim nvim"
    for v in $vims; do
        if [ -f "/bin/$v" ]
            then echo "$v"
            return
        fi
    done

    echo "error: no vim detected."
    exit -1
}

LANG="$1"
VIM="$(find_vim)"



