set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'

Plugin 'scrooloose/syntastic'

Plugin 'sophacles/vim-bundle-mako'

Plugin 'Rykka/riv.vim'

Plugin 'saltstack/salt-vim'

Plugin 'jgdavey/tslime.vim'

Plugin 'tpope/vim-fugitive.git'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'rdolgushin/groovy.vim'

Plugin 'martinda/Jenkinsfile-vim-syntax'

Plugin 'hashivim/vim-vagrant'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'IN3D/vim-raml'
Plugin 'lifepillar/vim-solarized8'

Plugin 'https://github.com/NL057/rockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"au BufNewFile,BufRead Jenkinsfile set filetype=jenkinsfile

autocmd FileType sql setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType html setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType jenkinsfile setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType rst setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType json setlocal expandtab tabstop=4 shiftwidth=4

augroup flietypedetect
    au BufRead,BufNewFile *.schema set filetype=json
augroup END

syntax enable

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
"colorscheme solarized8_dark


" Disable section folding in the Riv RestructuredText note taking plugin
let g:riv_disable_folding=1

set encoding=utf-8


" Use old tslime key bindings
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars



" Alfred custom statusline
"set statusline=%F%m%r%h%w\
"set statusline+=%{fugitive#statusline()}\
"set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
"set statusline+=\ [line\ %l\/%L]\ col\ %c

"set statusline+=%{rvm#statusline()}

"hi User1 guifg=#eea040 guibg=#222222
"hi User2 guifg=#dd3333 guibg=#222222
"hi User3 guifg=#ff66ff guibg=#222222
"hi User4 guifg=#a0ee40 guibg=#222222
"hi User5 guifg=#eeee40 guibg=#222222


"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

set laststatus=2
set expandtab tabstop=4 shiftwidth=4

inoremap <F5> <C-R>=strftime("%F %H:%M:%S")<CR>
