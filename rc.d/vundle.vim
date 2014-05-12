set nocompatible
filetype off

" Set paths
" We go up a step since this is a config file and thus we're in rc.d directory
let root = expand('<sfile>:p:h:h')
let pluginPath = root . '/bundle'
let pluginConf = root . '/bundle.d/'
let vundlePath = '/Vundle.vim/'

" Include vundle
let &rtp.= ',' . pluginPath . vundlePath
call vundle#begin(pluginPath)

for repo in split(globpath(pluginConf, "*"), '\n')

    if vundlePath == repo
        continue
    endif
    
    for plugin in readfile(repo)

        let _repo = fnamemodify(repo, ':t')
        if empty(plugin)
            continue
        endif

        Plugin _repo . '/' . plugin
    endfor
endfor

call vundle#end()
filetype plugin indent on
