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
" if has('termguicolors')
"   set termguicolors
" endif

highlight Normal ctermbg=NONE

call plug#begin(stdpath('data') . '/plugged')
  Plug 'mfussenegger/nvim-lint'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-signify'
  Plug 'ap/vim-css-color'
  Plug 'neoclide/coc.nvim'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'APZelos/blamer.nvim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'yuezk/vim-js'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-scripts/ShowPairs'
  Plug 'tpope/vim-surround'

  Plug 'tpope/vim-commentary'
  Plug 'suy/vim-context-commentstring'
  Plug 'mxw/vim-jsx'
  Plug 'ianks/vim-tsx'
  Plug 'pangloss/vim-javascript'
  Plug 'prettier/vim-prettier'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'
  Plug 'maxmellon/vim-jsx-pretty'

  " Autocomplette
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  "ColorSchemes
  Plug 'savq/melange'
  Plug 'Shatur/neovim-ayu'
  Plug 'luisiacc/gruvbox-baby'
  Plug 'sainnhe/gruvbox-material'
  Plug 'rafi/awesome-vim-colorschemes'
call plug#end()
set completeopt=menu,menuone,noselect
autocmd BufWritePre *.php PrettierAsync
autocmd BufWritePre *.jsx PrettierAsync
autocmd BufWritePre *.tsx PrettierAsync
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
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>


" Colorscheme
" let g:gruvbox_material_better_performance = 1
let g:airline_theme = 'gruvbox_material'
colorscheme gruvbox-baby
" colorscheme sunbather

" This line make the terminal transparent on windows terminal
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

let g:blamer_show_in_insert_modes = 0

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-prettier', 'coc-phpls', 'coc-html']
