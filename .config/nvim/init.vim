source $HOME/.config/nvim/vim-plug/plugins.vim
let g:user_emmet_expandabbr_key = '<C-s>'
let g:user_emmet_settings = {
\  'html' : {
\    'indentation' : '  '
\  }
\}

set number
set tabstop=2
set incsearch
set hlsearch
set smarttab
set mouse=a 
set autoindent
set noswapfile
set scrolloff=7
set colorcolumn=79
highlight ColorColumn ctermbg=238
colorscheme gruvbox
"key bindings
inoremap jk <esc>

nnoremap ,<space> :nohlsearch<CR>

