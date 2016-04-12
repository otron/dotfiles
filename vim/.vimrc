set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
" Julia-vim
Plugin 'JuliaLang/julia-vim'

" Added at CERN
" only enable plugins for [mg]vim
if has('gui_running')
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'fisadev/vim-isort'
    Plugin 'scrooloose/syntastic'
    Plugin 'altercation/vim-colors-solarized.git'
endif

" Added in preparation for react/reflux/redux project
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " enable JSX syntax highlighting for .js files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" END VUNDLE
" enables syntax highlighting
syntax on

" enables automatic C-like indentation
" 'smartindent' enforces removal of indent on lines starting with '#'
" which is hella lame when working with <any language that uses '#' for
" comments>
set cindent

" size of hard tab stop
set tabstop=4

" size of an 'indent'
set shiftwidth=4

" always expand tabs to spaces
set expandtab

" show line numbers
set number

" show column ruler
set ruler

" highlight trailing whitespace
match ErrorMsg '\s\+$'

" set character encoding
set fileencodings=utf-8

" ignore case when searching (no need for \c)
set ignorecase

" disable arrow key navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" fix backspace?
set backspace=start,eol,indent

" Open NerdTree with CTRL-n
map <C-n> :NERDTreeToggle<CR>

" Show hidden files by default
let NERDTreeShowHidden=1

" syntastic recommended init settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ['pep8', 'pylint', 'python']
let g:syntastic_python_pep8_args='--ignore=E712,E226'

" Added this sometime in autumn 2015 to try and resolve some issue with
" syntastic messing up the statusline. Seems to have worked, since the 
" problem disappeared. Can't remember what it was, though.
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Disable audible bell by enabling visual bell (lol), for macvim
set vb

" Set color scheme to solarized when using [gm]vim
if has('gui_running')
    set background=dark
    colorscheme solarized
    set gfn=Monaco:h15
endif
