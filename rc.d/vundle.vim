set nocompatible
filetype off

" Set paths
" We go up a step since this is a config file and thus we're in rc.d directory
let root = expand('<sfile>:p:h') . '/..'
let pluginPath = root . '/bundle'
let pluginConf = root . '/bundle.d'

" Include vundle
let &rtp.= ',' . pluginPath . '/Vundle.vim/'
call vundle#rc(pluginPath)

for plugin in split(globpath(pluginConf, "*.*"), '\n')
    let expanded = fnamemodify(plugin, ':t')
    let info = split(expanded, '\.')

    if len(info) > 2
        continue
    endif

    let plugin=join(info, "/")

    if empty(plugin)
        continue
    endif

    Plugin plugin
endfor

filetype plugin indent on
