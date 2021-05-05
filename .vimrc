" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set winminheight=0
set winheight=999

" Use space to search
map <Space> /
map <S-Space> ?

" Map Ctrl+S to save
map <C-s> :w<CR>
map <CS-s> :w!<CR>
" Change the cwd to the opened file
set autochdir

" Set Line number
set nu

" Set Ignore Case
set ic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
 
colorscheme darkblue
set background=dark
 
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
 
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
 
" Use Unix as the standard file type
set ffs=unix,dos,mac
 
set nocompatible              " be iMproved, required
"Wasim_fixing_syntax_hl filetype off                  " required
 
 
"Wasim_Install_Vundle " set the runtime path to include Vundle and initialize
"Wasim_Install_Vundle set rtp+=~/.vim/bundle/Vundle.vim
"Wasim_Install_Vundle call vundle#begin()
"Wasim_Install_Vundle " alternatively, pass a path where Vundle should install plugins
"Wasim_Install_Vundle "call vundle#begin('~/some/path/here')
"Wasim_Install_Vundle  
"Wasim_Install_Vundle " let Vundle manage Vundle, required
"Wasim_Install_Vundle Plugin 'VundleVim/Vundle.vim'
"Wasim_Install_Vundle  
"Wasim_Install_Vundle " The following are examples of different formats supported.
"Wasim_Install_Vundle " Keep Plugin commands between vundle#begin/end.
"Wasim_Install_Vundle " plugin on GitHub repo
"Wasim_Install_Vundle "Plugin 'tpope/vim-fugitive'
"Wasim_Install_Vundle " plugin from http://vim-scripts.org/vim/scripts.html
"Wasim_Install_Vundle "Plugin 'L9'
"Wasim_Install_Vundle " Git plugin not hosted on GitHub
"Wasim_Install_Vundle "Plugin 'git://git.wincent.com/command-t.git'
"Wasim_Install_Vundle " git repos on your local machine (i.e. when working on your own plugin)
"Wasim_Install_Vundle "Plugin 'file:///home/gmarik/path/to/plugin'
"Wasim_Install_Vundle " The sparkup vim script is in a subdirectory of this repo called vim.
"Wasim_Install_Vundle " Pass the path to set the runtimepath properly.
"Wasim_Install_Vundle "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Wasim_Install_Vundle " Install L9 and avoid a Naming conflict if you've already installed a
"Wasim_Install_Vundle " different version somewhere else.
"Wasim_Install_Vundle "Plugin 'ascenator/L9', {'name': 'newL9'}
"Wasim_Install_Vundle Plugin 'netrw.vim'
"Wasim_Install_Vundle Plugin 'scrooloose/nerdtree'
"Wasim_Install_Vundle Plugin 'Solarized'
"Wasim_Install_Vundle Plugin 'verilog_systemverilog.vim'
"Wasim_Install_Vundle "Plugin 'csv.vim'
"Wasim_Install_Vundle " All of your Plugins must be added before the following line
"Wasim_Install_Vundle call vundle#end()            " required
"Wasim_Install_Vundle filetype plugin indent on    " required
"Wasim_Install_Vundle " Setting Wasim Begin
"Wasim_Install_Vundle "augroup Systemverilog
"Wasim_Install_Vundle "    autocmd!
"Wasim_Install_Vundle "    autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete
"Wasim_Install_Vundle "augroup END
"Wasim_Install_Vundle " Settings Wasim End
"Wasim_Install_Vundle " To ignore plugin indent changes, instead use:
"Wasim_Install_Vundle "filetype plugin on
"Wasim_Install_Vundle "
"Wasim_Install_Vundle " Brief help
"Wasim_Install_Vundle " :PluginList       - lists configured plugins
"Wasim_Install_Vundle " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"Wasim_Install_Vundle " :PluginSearch foo - searches for foo; append `!` to refresh local cache
"Wasim_Install_Vundle " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"Wasim_Install_Vundle "
"Wasim_Install_Vundle " see :h vundle for more details or wiki for FAQ
"Wasim_Install_Vundle " Put your non-Plugin stuff after this line
 
 
"map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F2> :NERDTree<CR>
map <F3> :set wrap!<CR>
map <F4> :!p4 edit %<CR>
map <F5> <C-W>f<CR>
map <F6> :q<CR>
map <F7> :!chmod 777 %<CR>
map <F9> ]cdp
 
"Search Customization - Abhra
set hlsearch
set incsearch
 
"Show matching brackets when text indicator is over them
set showmatch
"How many tenths of a second to blink when matching brackets
set mat=2
