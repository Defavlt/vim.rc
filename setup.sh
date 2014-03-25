#!/bin/bash

function setup {
    target=$1
    link=$2

    ln -s $target $link 1>&2 2>/dev/null
    vim "+source $link" "+PluginInstall" "+qall" &

    pid=$!
    kill -9 $pid 1>&2 2>/dev/null

    echo "Done"
}

if [ $# -eq 2 ];
then
    setup $1 $2
else
    printf "Usage: $0 TARGET LINK\n"
fi
