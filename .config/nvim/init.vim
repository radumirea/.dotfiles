unlet! skip_defaults_vim
"source $VIMRUNTIME/defaults.vim

let mapleader=" "

set ignorecase smartcase hlsearch incsearch
set number relativenumber
set scrolloff=5
set spelllang=en
set clipboard+=unnamedplus
"lnebreak on space characters
set linebreak
"save changes dialogue on error
set confirm
"enable mouse pointing
set mouse=a
"enable line highlighting
set cursorline
hi clear
hi CursorLine cterm=NONE ctermbg=black
hi CursorLineNr cterm=NONE ctermbg=black
hi LineNr ctermfg=darkGray
hi StatusLine cterm=bold ctermbg=black ctermfg=gray

inoremap jk <Esc>
map <tab> %
"center the screen when searching
nnoremap n nzzzv
nnoremap N Nzzzv
"easier jump to start/end of line
noremap H ^
noremap L g_
noremap <S-j> <C-d>
noremap <S-k> <C-u>

"toggle spellcheck
map <silent><leader>o :set spell!<CR>
"disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
"set specific file interpretation
autocmd BufRead,BufNewFile ~/.zettgo/* set filetype=markdown

"reopen the file on the same line
augroup line_return
	au!
	au BufReadPost * 
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ execute 'normal! g`"zvzz' |
	\ endif
augroup END

"plugin setup
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
  Plug 'karb94/neoscroll.nvim'
  Plug 'ap/vim-css-color'
call plug#end()

lua require('config')


