""" Indenting
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

""" Editing visual aids
set number
set showmatch

""" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

""" Extra
set wildmenu
set mat=2
set backspace=indent,eol,start
set visualbell
set hidden
set hid
set magic
set ruler
filetype indent plugin on
syntax on
set encoding=utf8
set ffs=unix,mac,dos
set nocompatible


" Windows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

call pathogen#infect()
call pathogen#helptags()

"How can I open a NERDTree automatically when vim starts up?
"autocmd vimenter * NERDTree

"How can I open a NERDTree automatically when vim starts up if no files were specified?
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"How can I change default arrows?
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Toggle tree view with F2
"Find the currently opened file in the tree with F3
"Peek at a file with F4
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeToggle="<F2>"
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let g:neocomplete#enable_at_startup = 1

" Vim notes
:let g:notes_directories = ['~/Documents/Notes/VimNotes']
:let g:notes_title_sync = 'no'
:let g:notes_suffix = '.txt'


