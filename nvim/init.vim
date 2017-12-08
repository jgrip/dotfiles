"==============================================================================
"" Settings
"===============================================================================

"let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set t_Co=256

""" Basics
set shortmess+=aoOtT	" Clean up messages
set virtualedit=onemore	" Go beyond end of line
set nospell		        " No spellchecking
set hidden		        " Buffer switching without saving
set cursorline		    " Highlight current line
set showtabline=2	    " Always show tabs
set noshowmode		    " Don't show mode
set modelines=0         " I don't use modelines
set scrolloff=3         " Keep three lines on screen
set number              " Except for current line
set relativenumber      " Line numbers relative to cursor
set virtualedit=block   " Allow visualmode to go beyond line length

set showmatch           " Show matching brackets
set ignorecase          " Ignore case in searches
set smartcase           " Unless one is a capital
set showcmd             " Show commands when typing them

" Use normal regex syntax, not vim
nnoremap / /\v
vnoremap / /\v

set nowrap
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces

set pastetoggle=<F12>

set synmaxcol=1024      " Don't do syntax colouring for long lines

" Stop spamming me with cruft
set nobackup
set nowritebackup
set noswapfile

""" Key remaps
" Use space as leader
let mapleader = ' '
let maplocalleader = ' '

" clean search highlights
nmap <silent> <leader>/ :set invhlsearch<CR>

" For when you didn't sudo like a boss of n00bs
cmap w!! w !sudo tee % >/dev/null

""" Splits
set splitright
set splitbelow

""" Motions
" Ctrl-jkhl for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"===============================================================================
"" Plugin Settings
"===============================================================================

""" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enbled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_inactive_collapse = 0
let g:virtualenv_auto_activate = 1
set laststatus=2

""" NerdTree
inoremap <C-e> <esc>:NERDTreeToggle<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
let NerdTreeIgnore=['\.py[cd]$','\~$']

"===============================================================================
"" vim-plug
"===============================================================================
call plug#begin('~/.vim/plugged')

"===============================================================================
"" plugins
"===============================================================================

" Basics

" Code completion
" Plug 'Shougo/neocomplcache'
" Plug 'Shougo/neocomplete.vim'
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'vim-scripts/AutoComplPop'
" Plug 'wellle/tmux-complete.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Snippets
" Plug 'honza/vim-snippets'
" Plug 'JazzCore/neocomplcache-ultisnips'
" Plug 'Shougo/neosnippet'
" Plug 'SirVer/ultisnips'

" Comments
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

" File browsing
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" File types
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'

" Python
" Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'

" Git
Plug 'airblade/vim-gitgutter'

" Motions

" Text objects
Plug 'tpope/vim-surround'

" Status lines
Plug 'bling/vim-airline'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'

" Colour schemes
"Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
"Plug 'freeo/vim-kalisi'
"Plug 'tomasr/molokai'

" Misc
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentline'

"" End of plugin section
call plug#end()

"=============================================================================== 
"" Post-plugin settings
"=============================================================================== 
""" Colour scheme
set background=dark
colorscheme gruvbox

"===============================================================================
"" Filetype settings
"===============================================================================
autocmd FileType vim
    \ iabbrev cl "===============================================================================

"===============================================================================
"" External stuff
"===============================================================================

""" tmuxline config
let g:tmuxline_theme = 'airline'

""" promptline config
let g:promptline_theme = 'airline'
let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'x' : [ promptline#slices#python_virtualenv() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

""" ALE
let g:ale_linters = {
\   'python': ['pycodestyle'],
\}

""" Deoplete
let g:deoplete#enable_at_startup = 1
