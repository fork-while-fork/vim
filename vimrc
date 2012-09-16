set nocompatible
syntax on
filetype plugin indent on

set bg=dark
set t_Co=256

colorscheme solarized

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set relativenumber
set autoindent
set scrolloff=5
set showmode
set showcmd
set cursorline
set undofile
set undodir=/tmp
set laststatus=2

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch

nnoremap <tab> %
vnoremap <tab> %

set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

set backup
set backupdir=/home/milleraj/.vim/backup


nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>

au FocusLost * :wa

nnoremap <leader>a :Ack 
nnoremap <s-n> :NERDTreeToggle<CR>

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


set pastetoggle=<F2>

function MyTabLine()
    let s=''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)
        let s .= '%' . i . 'T%*'
        if i == t
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        let s .= ' ' . i . ' '
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
            let file = '[No Name]'
        endif
        let s .= file . ' '
        let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%='
        if tabpagenr('$') > 1
            let s .= '%999XX'
        else
            let s .= 'X'
        endif
    return s
endfunction

set stal=2
set tabline=%!MyTabLine()
