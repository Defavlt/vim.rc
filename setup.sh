#!/bin/bash

function setup {
    target=`pwd`/rc.vim
    link=~/.vimrc

    ln -s $target $link 1>&2 2>/dev/null
    vim "+source $link" "+PluginInstall" "+qall" &

    pid=$!
    kill -9 $pid 1>&2 2>/dev/null

    echo "Done"
}

setup
