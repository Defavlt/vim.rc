let root            = fnamemodify(resolve(expand('<sfile>')), ':p:h')
let lib_path        = root . '/rc.d'
let file_pattern    = '*.vim'

for rc in split(globpath(lib_path, file_pattern), '\n')
    execute('source '.rc)
endfor
