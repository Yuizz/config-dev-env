syntax on
set mouse=a
set number
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set tabstop=2 shiftwidth=2
set expandtab
set laststatus=2
set noshowmode
set hlsearch
set incsearch
set ignorecase

highlight Normal ctermbg=NONE
call plug#begin(stdpath('data') . '/plugged')
  Plug 'mfussenegger/nvim-lint'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'https://github.com/morhetz/gruvbox'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-signify'
  Plug 'ap/vim-css-color'
  Plug 'neoclide/coc.nvim'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NvimTreeToggle<CR>

colorscheme gruvbox
let g:gruvbox_constrast_dark = 1
let g:gruvbox_transparent_bg = 1
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
set bg=dark
