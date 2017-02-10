filetype plugin off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'benmills/vimux'
Plugin 'honza/dockerfile.vim'
Plugin 'scrooloose/nerdtree'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-commentary'
Plugin 'mileszs/ack.vim'
Plugin 'shougo/neocomplete.vim'
Plugin 'elzr/vim-json'
Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'

call vundle#end()
filetype plugin indent on

autocmd BufNewFile,BufRead *.ego set ft=html
autocmd BufNewFile,BufRead *.go set ft=go
autocmd BufNewFile,BufRead *.json set ft=json nolist tabstop=2 shiftwidth=2 expandtab autoindent
autocmd BufNewFile,BufRead *.swift set ft=swift
autocmd BufNewFile,BufRead *.md set ft=markdown noexpandtab

autocmd FileType go setlocal omnifunc=go#complete#Complete
autocmd FileType go nnoremap <buffer> gd :GoDef<cr>
autocmd FileType go nnoremap <buffer> K :GoDoc<cr>
autocmd FileType go nmap ,i <Plug>(go-info)
autocmd FileType go set makeprg=make
autocmd FileType go nmap ,e <Plug>(go-rename)
autocmd FileType go set tabstop=4 shiftwidth=4
autocmd FileType go map <C-]> gd
autocmd FileType go map ,rn :GoRename<CR>
autocmd FileType html set expandtab
autocmd FileType ruby set expandtab
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
autocmd FileType ruby map ,. :w<CR>:!make -f Makefile.wip<CR>

filetype plugin on

set laststatus=2

syntax on
set history=10000
set expandtab
set tabstop=2
set smartindent
set relativenumber 
set number




"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
"
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
                        \ 'default' : '',
                        \ 'vimshell' : $HOME.'/.vimshell_hist',
                        \ 'scheme' : $HOME.'/.gosh_completions'
                        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] ='\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>   neocomplete#undo_completion()
inoremap <expr><C-l>   neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>


