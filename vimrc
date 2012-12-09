colorscheme molokai

set nocompatible
set title
set encoding=utf-8
set paste
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ambiwidth=double
set ruler
set number
set backspace=indent,eol,start
set list
set listchars=tab:/.,trail:-,extends:>,precedes:<
set ignorecase
set showcmd
set laststatus=2
set statusline=%t\ %{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L
set autoread
set hlsearch
set hidden
set noswapfile
set nostartofline
set shortmess+=I
set t_Co=256
set background=dark

syntax on
filetype indent on
filetype plugin on

au BufNewFile,BufRead *.psgi,*.t set filetype=perl
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead *.conf set filetype=ini
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.ejs set filetype=javascript
au BufNewFile,BufRead *.tx set filetype=html
au BufNewFile,BufRead *.nmf set filetype=json
au BufNewFile,BufRead *.ts set filetype=typescript
au BufNewFile,BufRead nginx.conf set filetype=nginx
au BufNewFile,BufRead *.less set filetype=less

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'jsx/jsx.vim.git'
Bundle 'tpope/vim-rails'
Bundle 'themerius/GithubColorscheme'
Bundle 'scala.vim'
Bundle 'ZenCoding.vim'
Bundle 'leafgarland/typescript-vim.git'
Bundle 'TwitVim'
Bundle 'groenewege/vim-less'
Bundle 'grooovy.vim'
Bundle 'nginx.vim'

autocmd FileType make setlocal noexpandtab

autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal softtabstop=2

autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal softtabstop=2

autocmd FileType css setlocal tabstop=2
autocmd FileType css setlocal shiftwidth=2
autocmd FileType css setlocal softtabstop=2

autocmd FileType jsp setlocal tabstop=2
autocmd FileType jsp setlocal shiftwidth=2
autocmd FileType jsp setlocal softtabstop=2

autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
autocmd FileType yaml setlocal softtabstop=2

autocmd FileType ruby setlocal tabstop=2
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal softtabstop=2

autocmd FileType cpp setlocal tabstop=2
autocmd FileType cpp setlocal shiftwidth=2
autocmd FileType cpp setlocal softtabstop=2

autocmd FileType objc setlocal tabstop=2
autocmd FileType objc setlocal shiftwidth=2
autocmd FileType objc setlocal softtabstop=2

autocmd FileType json setlocal tabstop=2
autocmd FileType json setlocal shiftwidth=2
autocmd FileType json setlocal softtabstop=2

autocmd FileType scala setlocal tabstop=2
autocmd FileType scala setlocal shiftwidth=2
autocmd FileType scala setlocal softtabstop=2

nnoremap p "0p
