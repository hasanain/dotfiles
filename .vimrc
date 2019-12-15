set number
set relativenumber

syntax on
set backspace=indent,eol,start
set autoindent
set ls=2 " show status line

" tab config
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" esc map
imap jk <Esc>

" tabs
nmap tt :tabnext<CR>
nmap tr :tabprevious<CR>
nmap tn :tabnew<space>

" line bubble stuff
nmap <C-k> [e
nmap <C-j> ]e

vmap <C-k> [egv
vmap <C-j> ]egv

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2 | set tabstop=2 

" ctrlp stuff
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

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

