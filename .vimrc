set number
set relativenumber

syntax on
set backspace=indent,eol,start
set autoindent
set ls=2

" tab config
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" esc map
imap jk <Esc>

" line bubble stuff
nmap <M-Up> [e
nmap <M-Down> ]e

vmap <M-Up> [egv
vmap <M-Down> ]egv

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2 | set tabstop=2 

" ale config
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

let g:javascript_plugin_flow = 1

let g:ale_linters = {
\ 'javascript': ['flow', 'eslint'],
\ 'python': ['black', 'isort']
\}

highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_sign_error= '🔥'
let g:ale_sign_warning= '🦚'
let g:ale_statusline_format = ['X %d', '? %d', '']


" prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

