if has("syntax")
	syntax on
endif

colorscheme molokai

set autoindent
set cindent
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
set expandtab

autocmd FileType python map <buffer> <F5> :w<CR>:!clear;python %<CR>
autocmd FileType python imap <buffer> <F5> <ESC> :w<CR>:!clear;python %<CR>

autocmd FileType c,cpp map <buffer> <F5> :w<CR>:!clear;gcc -o tmp_VIMAUTOCMD %;./tmp_VIMAUTOCMD;rm tmp_VIMAUTOCMD<CR>
autocmd FileType c,cpp imap <buffer> <F5> <ESC> :w<CR>:!clear;gcc -o tmp_VIMAUTOCMD %;./tmp_VIMAUTOCMD;rm tmp_VIMAUTOCMD<CR>
