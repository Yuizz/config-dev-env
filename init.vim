syntax on
set mouse=a
set nu rnu
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set tabstop=2 shiftwidth=2
set expandtab
set laststatus=2
set noshowmode
set hlsearch
set incsearch
set ignorecase
set background=dark
if has('termguicolors')
  set termguicolors
endif

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
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'yuezk/vim-js'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-scripts/ShowPairs'
  Plug 'tpope/vim-surround'

  Plug 'tpope/vim-commentary'
  Plug 'suy/vim-context-commentstring'
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'prettier/vim-prettier'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  "ColorSchemes
  Plug 'savq/melange'
  Plug 'Shatur/neovim-ayu'
  Plug 'luisiacc/gruvbox-baby'
  Plug 'sainnhe/gruvbox-material'
call plug#end()

autocmd BufWritePre *.php PrettierAsync
autocmd BufWritePre *.jsx PrettierAsync
autocmd BufWritePre *.js PrettierAsync
autocmd BufWritePre *.css PrettierAsync
autocmd BufWritePre *.html PrettierAsync

" NERDTree
au VimEnter *  NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Maps
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>

" Colorscheme
let g:gruvbox_material_better_performance = 1
let g:airline_theme = 'gruvbox_material'
colorscheme gruvbox-material

" This line make the terminal transparent on windows terminal
" autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

let g:blamer_show_in_insert_modes = 0

