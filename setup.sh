#!/bin/bash

function setup {
    target=$1
    link=$2

    ln -s $target $link
    vim "+source $link" &

    pid=$!
    kill -9 $pid >/dev/null &>/dev/null

    echo "Done"
}

if [ $# -eq 2 ];
then
    setup $1 $2
else
    printf "Usage: $0 TARGET LINK\n"
fi
