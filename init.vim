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
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-signify'
  Plug 'ap/vim-css-color'
  Plug 'neoclide/coc.nvim'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'github/copilot.vim'
  Plug 'APZelos/blamer.nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'Yggdroot/indentLine'

  "ColorSchemes
  Plug 'https://github.com/morhetz/gruvbox'
  Plug 'Everblush/everblush.vim'
call plug#end()

" Maps
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

colorscheme gruvbox
" colorscheme everblush
" let g:gruvbox_constrast_dark = 1
" let g:gruvbox_transparent_bg = 1
" This line make the terminal transparent on windows terminal
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
" set bg=dark

let g:blamer_show_in_insert_modes = 0

" Comment pluggin
lua require('Comment').setup()
