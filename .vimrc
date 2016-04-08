" Matt Grau
" General {{{
set nocompatible            " we don't care about VI compatibility
set spell                   " turn on spellcheck
set history=1000            " increase history from default of 20
execute pathogen#infect()
" }}}
" Colors {{{
colorscheme molokai         " textmate colorscheme
set background=dark         " makes the background dark
syntax enable               " enable syntax highlighting
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
set wildmode=list:longest,full   " command <Tab> completion, list matches, then longest common part, then all
set lazyredraw              " redraw only when needed
set showmatch               " highlight matching braces
set showmode                " display current mode
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
set mouse=a                 " automatically enable mouse
set scrolljump=5            " lines to scroll
nmap ; : "re
" }}}
" MATLAB {{{
map <leader>r :w<CR>:!/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop -nosplash -r "try, run %:p, pause, catch, end, quit" <CR> <CR>
autocmd BufEnter *.m compiler mlint 
" }}} 
" Custom Keymaps {{{
imap // <esc>
nmap ; :
nmap <space> i
nnoremap gV `[v`]
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>= mzgg=G'z<CR>
" }}}
" vim:foldmethod=marker:foldlevel=0
