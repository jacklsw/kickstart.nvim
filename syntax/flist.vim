if exists("b:current_syntax")
  finish
endif

syn keyword flistTodo contained TODO FIXME NOTE
syn match flistComment "//.*$" contains=flistTodo

syn match flistTypeDef "^ *#ifdef"
syn match flistTypeDef "^ *#else"
syn match flistTypeDef "^ *#endif"

syn match flistVar "\$\(\(:\{2,}\)\?\([[:alnum:]_]*::\)*\)[[:alnum:]_]*"
syn region flistVar start=+\$\(\(:\{2,}\)\?\([[:alnum:]_]*::\)*\)[[:alnum:]_]\+(+ skip=+\\)+ end=+)+
syn match flistVar extend "${[^}]*}"

syn match flistArg "^ *-[Ff]"


let b:current_syntax = "flist"

hi def link flistTodo        Todo
hi def link flistComment     Comment
hi def link flistTypeDef     PreProc
hi def link flistArg         Constant
hi def link flistVar         Identifier
