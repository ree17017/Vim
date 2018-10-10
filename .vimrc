set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-surround'

" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Plugin 'phpactor/phpactor'
Plugin 'phpactor/phpactor'

" prettier/vim-prettier
Plugin 'prettier/vim-prettier'

" Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/syntastic'

"Plugin 'pangloss/vim-javascript'
Plugin 'pangloss/vim-javascript'

" alvan/vim-closetag
Plugin 'alvan/vim-closetag'

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
" Put your non-Plugin stuff after this line"******************************************DO not delete below line
"********Syntastic settings******************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Cherckers
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"********************************************

let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END



" Air Plug in options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'


" save folds
:setlocal foldmethod=syntax
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

"Basic vimrc stuff
set mouse=a
set expandtab
set shiftwidth=3
set softtabstop=3
set smartindent
set number
set ruler
set visualbell
set cursorline
set incsearch
set nocompatible
set wildmenu
set showmatch
set spell
set relativenumber " Show relative line number

" php syntax and other stuff for php
let php_sql_query = 1 "SQL syntax highlighting inside Strings
let php_baselib = 1     " Highlighting the baselib methods
let php_asp_tags = 1    " highlighting ASP-stye short tags
let php_parent_error_close = 1   " Highlighting parent error ] ir (
let php_sync_folding = 1         " enable folding for classes and functions


set t_Co=256
colorscheme desert

set guifont=Lucida_Console:h11

" toggle for highlighting 
nnoremap <F3> :set hlsearch!<CR>


" Syntastic Addon
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"PHP addons

"HP executable (default = "php")

" make sarches always appear in centre of page
:nnoremap n nzz
:nnoremap N Nzz

"Tabs
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" remapping of keys
autocmd FileType html inoremap jk <ESC>
autocmd FileType makefile inoremap jk <ESC>
autocmd FileType css inoremap jk <ESC>
autocmd FileType php inoremap jk <ESC>
autocmd FileType js inoremap jk <ESC>

autocmd FileType cpp inoremap jk <Esc>
autocmd FileType cpp inoremap ;{ {<Enter><Enter>}<Esc>k
autocmd FileType php inoremap ;{ {<Enter><Enter>}<Esc>ki<Tab>
autocmd FileType html inoremap ;{ {<Enter><Enter>}<Esc>ki<Tab>
autocmd FileType css inoremap ;{ {<Enter><Enter>}<Esc>ki<Tab>

autocmd FileType cpp inoremap ;** /**********************************************************************<Enter><Tab>Function:<Enter><Tab>Use:<Enter>************************************************************************/<Esc>bbdwkk$

filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

"Status bar stuff
syntax enable

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
