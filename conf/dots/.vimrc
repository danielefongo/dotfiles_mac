set nocompatible " Don't be compatible with vi
filetype off

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'iCyMind/NeoSolarized'

" Initialize plugin system
call plug#end()

" NERDTree
map <C-e> :NERDTreeToggle<CR> " Toggle on ctrl-e
map <leader>f :NERDTreeFind<CR> " Toggle in find mode
let NERDTreeShowHidden=1 " Show hidden files
let NERDTreeQuitOnOpen=1 " Hide after selection
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd StdinReadPre * let s:std_in=1 " Open a NERDTree automatically when vim starts up if no files were specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " Open a NERDTree automatically when vim starts up if no files were specified

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " exclude gitignored and .git/ files
let g:ctrlp_dont_split = 'nerdtree'

" Theme 

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme NeoSolarized
set background=dark

syntax enable

inoremap jk <Esc>
