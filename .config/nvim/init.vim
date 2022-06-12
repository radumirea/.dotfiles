unlet! skip_defaults_vim
"source $VIMRUNTIME/defaults.vim

set ignorecase smartcase hlsearch incsearch
set number relativenumber
set scrolloff=5
set spelllang=en
set clipboard+=unnamedplus
"lnebreak on space characters
set linebreak

inoremap jk <Esc>
map <tab> %
"center the screen when searching
nnoremap n nzzzv
nnoremap N Nzzzv
"easier jump to start/end of line
noremap H ^
noremap L g_

"reopen the file on the same line
augroup line_return
	au!
	au BufReadPost * 
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ execute 'normal! g`"zvzz' |
	\ endif
augroup END
