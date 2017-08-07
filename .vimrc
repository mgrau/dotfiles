" Matt Grau
" General {{{
set nocompatible            " we don't care about VI compatibility
set spell                   " turn spellcheck on
call pathogen#infect()
call pathogen#helptags()
" }}}
" Colors {{{
colorscheme molokai           " textmate colorscheme
highlight Comment cterm=bold
syntax enable
"}}}
" Spaces & Tabs {{{
set autoindent              " indent at same level as previous line
set tabstop=4               " number of visual spaces per tab
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            "
set expandtab               " makes tabs into spaces
filetype indent on          " filetype specific indent files
" }}}
" UI Config {{{
set number                  " turn on line numbers
set cursorline              " highlight current line
set showcmd                 " show command in bottom bar
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when needed
set showmatch               " highlight matching braces
" set guifont=DejaVu\ Sans:s12
" }}}
" Search {{{
set ignorecase              " ignore case
set smartcase               " case sensitive when uc present
set incsearch               " search while typing
set hlsearch                " highlight matches
" }}}
" Folding {{{
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nexted folds max
set foldmethod=indent       " fold based on indent level
" }}}
" Mouse {{{
set mouse=a                 " enable mouse uatomatically
nmap ; : "re    
" }}}
" Airline {{{
let g:airline_powerline_fonts=1
let g:airline_theme='molokai'
" }}}
" Custom Keymaps {{{
imap // <esc>
nmap ; :
nmap <space> i
nnoremap gV '[v']
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>rv :so $MYVIMRC<CR>
nnoremap <leader>= mzgg=G'z<CR>

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>
nnoremap <F5> :UndotreeToggle<CR>
" }}}
"L vim:foldmethod=marker:foldlevel=0
