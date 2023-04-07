
VIMS_ALL='vi vim nvim'
VIM='/bin/vim'

editor_find () {
    local v=
    for vim in $VIMS_ALL; do 
        if [ -f "/bin/$vim" ]
            then v="$vim"
        fi
    done

    echo "$v"
}

