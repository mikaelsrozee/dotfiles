set number
set relativenumber
set nowrap
set noerrorbells

set nohlsearch
set incsearch

set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile

set scrolloff=8

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set colorcolumn=80

set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes


let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'pangloss/vim-javascript'      "Javascript support
let g:javascript_plugin_jsdoc = 1   "JavaDoc support
Plug 'HerringtonDarkholme/yats.vim' "Typescript and TSX support
Plug 'maxmellon/vim-jsx-pretty'     "JSX support
Plug 'jparise/vim-graphql'          "GraphQL support

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-graphql']

Plug 'dense-analysis/ale'           "Lint support
let b:ale_linters = ['eslint']
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '!'
let g:airline#extensions#ale#enabled = 1

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

" Remaps for opening vim config and reloading
nnoremap <silent><leader>0 :e ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

" Remaps for coc
nmap <leader>ca <Plug>(coc-codeaction)          " Show code action menu
nmap <leader>fc <Plug>(coc-fix-current)         " Fix current issue

nmap <silent>gd <Plug>(coc-definition)          " Jump to definition
nmap <silent>gy <Plug>(coc-type-definition)     " Jump to type definition
nmap <silent>gi <Plug>(coc-implementation)      " Jump to implementation
nmap <silent>gr <Plug>(coc-references)          " Jump to references

inoremap <silent><expr> <c-space> coc#refresh() " Use c-space for completion

nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)

nmap <leader>rn <Plug>(coc-rename)

" Remaps for jumping to linting errors
nmap <silent>nw <Plug>(ale_next_wrap)
nmap <silent>pw <Plug>(ale_previous_wrap)

" Telescope maps
nnoremap <C-p> <cmd>Telescope git_files<CR>
