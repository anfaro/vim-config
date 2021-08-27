set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'L9'
Plugin 'airblade/vim-gitgutter'
Plugin 'frazrepo/vim-rainbow'
" Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
" Plugin 'tmhedberg/simpylfold'
Plugin 'ervandew/supertab'
" Plugin 'nvie/vim-flake8'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'vim-python/python-syntax'
Plugin 'dracula/vim',{'name':'dracula'}
Plugin 'arcticicestudio/nord-vim'
Plugin 'joshdick/onedark.vim'
" Plugin 'w0rp/ale'
" Plugin 'eslint/eslint'
" Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'neoclide/coc.nvim'
" Plugin 'kevinoid/vim-jsonc'
Plugin 'dag/vim-fish'
Plugin 'ayu-theme/ayu-vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'iberianpig/ranger-explorer.vim'
Plugin 'universal-ctags/ctags'

call vundle#end()

filetype plugin indent on

" Themes
let ayucolor='light'
" let ayucolor='mirage'
" let ayucolor='dark'

" colorscheme ayu
" colorscheme palenight
colorscheme dracula
" colorscheme gruvbox
set background=dark

" Ale config
" let b:ale_linters = ['flake8']
" let b:ale_fixers = ['eslint']
" let b:ale_fix_on_save = 1

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extebsions#tagbar#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#fzf#enabled = 1

" Airline Theme
let g:airline_theme = 'deus'

" Nerdtree Git Settings
" let g:NERDTreeGitStatusUseNerdFonts = 1

" Ranger settings
nnoremap <silent><Leader>n :RangerOpenCurrentFile<CR>
nnoremap <silent><Leader>c :RangerOpenCurrentDir<CR>
nnoremap <silent><Leader>f :RangerOpenProjectRootDir<CR>
nmap <F5> :RangerOpenCurrentFile<CR>

" Indentation setting
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Vim Settings
set number
set cursorline
highlight clear CursorLine
highlight CursorLineNR ctermbg=red
set wrap!
set nowrap
set guicursor=i:ver25-iCursor
set t_Co=256
set laststatus=2
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Cursor

" NERDTree
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Plugin Mapping
" nmap <C-n> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>

" Fold Settings
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" One Dark Config
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    if (has("termguicolors"))
        set termguicolors
    endif

endif

syntax on

" Setting auto correct colorscheme
if &term =~ '256color'
    set t_ut=
endif

" Rainbow Setting
let g:rainbow_active = 1

" IndentLine Setting
let g:indentLine_setColors = 0
let g:indentLine_char = "|"

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Virtualenv.vim
let g:virtualenv_directory = '$HOME/virtual'
let g:virtualenv_stl_format = '[%n]'
set statusline+=%{virtualenv#statusline()}

" Fzf settings
nmap <F2> :Files<CR>
nmap <F3> :Buffers<CR>
nmap <F4> :BLines<CR>
