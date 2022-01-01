#!/bin/bash

HC() {
    cmd="GIT_COMMITTER_DATE='$1' git commit --amend --no-edit --date='$1'"

    if
        [ -z "$1" ]
    then
        cmd="echo ""Se requiere la fecha para el commit"""
    fi

    eval $cmd
}

HCE() {
    cmd="GIT_COMMITTER_DATE='$1' git commit --amend --date='$1'"

    if
        [ -z "$1" ]
    then
        cmd="echo ""Se requiere la fecha para el commit"""
    fi

    eval $cmd
}

HC "2000.01.01T00:00:00"
