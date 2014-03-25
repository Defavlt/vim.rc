set nocompatible
filetype off

" Set paths
let pluginPath = '~/src/vim/bundle'
let pluginConf = '~/src/vim/bundle.d/'

" Include vundle
let &rtp.= ',' . pluginPath . '/vundle/'
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
