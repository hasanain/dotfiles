set number
set relativenumber

" Tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2 | set tabstop=2 
autocmd FileType html       set shiftwidth=2 | set softtabstop=2 | set tabstop=2
autocmd FileType c          set shiftwidth=8 | set softtabstop=8 | set tabstop=8
autocmd FileType make       set shiftwidth=8 | set softtabstop=8 | set tabstop=8 | set noexpandtab


syntax on
set backspace=indent,eol,start

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
