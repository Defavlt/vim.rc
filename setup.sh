#!/bin/bash

function setup {
    target=`pwd`/rc.vim
    link=~/.vimrc

    ln -s $target $link 1>&2 2>/dev/null
    vim "+source $link" "+PluginInstall" "+qall" 1>&2 2>/dev/null &

    echo "Done"
}

setup
