" General formatting rules
syntax on
set cursorline
set showmatch
set tabstop=4 "Tab is 4 spaces
set expandtab "Tab is 4 spaces instead of /t
set softtabstop=4 "When moving or deleting, treat 4 spaces as tab
set autoindent "Autoindent next line
set number "Number the lines
set hlsearch
set splitbelow
set splitright
highlight Comment ctermfg=LightCyan
set wrap
set clipboard=unnamed "share system wide clipboard

"Flagging unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+&/

"Full stack development
au BufNewFile,BufRead *.js,*.html,*.htm,*.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2

" Python specific
"PEP8 indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix
autocmd BufWritePre *.py normal m`:%s/\s\+$//e`` "Autoremove spaces at end of lines

" Some general options
filetype indent on
set incsearch
set encoding=utf-8
set clipboard=unnamed "access system wide clipboard

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'tmhedberg/SimpylFold' "Working
Plugin 'vim-scripts/indentpython.vim' "Working
Plugin 'Valloric/YouCompleteMe' "Working
Plugin 'vim-syntastic/syntastic' "Working, needs flake8-3.6 pkg installed, and symlink flake8 and python3->python created
Plugin 'scrooloose/nerdtree' "Working
Plugin 'jistr/vim-nerdtree-tabs' "Working, requires nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin' "Working
Plugin 'jnurmine/Zenburn' "Working
Plugin 'sickill/vim-monokai' "Working
Plugin 'morhetz/gruvbox' "Working
Plugin 'altercation/vim-colors-solarized' "Working
Plugin 'kien/ctrlp.vim' "Working
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} "Working
"/Plugins

call vundle#end()

filetype plugin indent on

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = '/usr/local/bin/python3'

" Syntastic
"" Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"" Display checker-name for that error-message
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers=['flake8', 'python']

" Colorschemes
"colorscheme zenburn
"colorscheme Solarized
"colorscheme monokai
colorscheme gruvbox
"Solarized only
"call togglebg#map("F5")

"Splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"SimpylFold
let g:SimpylFold_docstring_preview=1

"NERDTree
"autocmd VimEnter * NERDTree
let NERDTreeIgnore=['\.pyc$','\-$'] "Ignore .pyc files
map <C-n> :NERDTreeToggle<CR>
"NERDTree git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
