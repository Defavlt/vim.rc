let lib_path        = "~/src/vim/rc.d"
let file_pattern    = "*.vim"

for rc in split(globpath(lib_path, file_pattern), '\n')
    execute("source ".rc)
endfor
