"----------
"PLUGIN
"----------

call plug#begin('~/.local/share/nvim/plugged')
        Plug 'preservim/nerdtree'
call plug#end()

"----------
"CONFIG
"----------

set number
syntax enable

" Tab=3 spaces

set tabstop=2
set softtabstop=2
set expandtab

" Highlight matching quotes
set showmatch

let base16colorspace=256  " Access colours present in 256 colorspace

" Autocomplete brackets / quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>

"Open file browser
map <C-n> :NERDTreeToggle<CR>

" Enable spellcheck on chosen file types
        autocmd BufRead,BufNewFile *.txt,*.md,*.tex 
        \ setlocal spell spelllang=en_au
