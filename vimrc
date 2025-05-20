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
set foldenable
set foldcolumn=1
set foldmethod=marker
set background=dark
set colorcolumn=100
set noic
set noautoindent
set nosmartindent

syntax on
filetype indent on
filetype plugin on

autocmd FileType python setl noautoindent

au BufNewFile,BufRead *.psgi,*.t set filetype=perl
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead *.conf set filetype=ini
au BufNewFile,BufRead *.ejs set filetype=javascript
au BufNewFile,BufRead *.tx set filetype=html
au BufNewFile,BufRead *.nmf set filetype=json
au BufNewFile,BufRead *.ts set filetype=typescript
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.bashrc set filetype=sh
au BufNewFile,BufRead *.gradle set filetype=groovy
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead nginx.conf set filetype=nginx
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.diag set filetype=blockdiag
au BufNewFile,BufRead *.markdown set filetype=txt
au BufNewFile,BufRead .eslintrc set filetype=json
au BufNewFile,BufRead *.pro set filetype=proguard
au BufNewFile,BufRead .simplecov set filetype=ruby

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'ZenCoding.vim'
Bundle 'groenewege/vim-less'
Bundle 'groovy.vim'
Bundle 'nginx.vim'
Bundle 'quickrun.vim'
Bundle 'vim-coffee-script'
Bundle 'leafgarland/typescript-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'derekwyatt/vim-scala'
Bundle 'tyru/caw.vim'
Bundle 'othree/yajs.vim'
Bundle 'elzr/vim-json'
Bundle 'negima1976/h2o-vim-syntax'

let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

au BufRead,BufNewFile h2o.conf set ft=h2o
autocmd FileType make setlocal noexpandtab

autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal softtabstop=2
autocmd FileType html setlocal noautoindent

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
"autocmd FileType scala setlocal noautoindent

autocmd FileType less setlocal tabstop=2
autocmd FileType less setlocal shiftwidth=2
autocmd FileType less setlocal softtabstop=2

autocmd FileType coffee setlocal tabstop=2
autocmd FileType coffee setlocal shiftwidth=2
autocmd FileType coffee setlocal softtabstop=2

autocmd FileType typescript setlocal tabstop=2
autocmd FileType typescript setlocal shiftwidth=2
autocmd FileType typescript setlocal softtabstop=2

nnoremap p "0p
