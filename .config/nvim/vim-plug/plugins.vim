" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Emmet
    Plug 'mattn/emmet-vim'
		
    " JS color
		Plug 'yuezk/vim-js'
		Plug 'maxmellon/vim-jsx-pretty'
		Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
 
    " color schemas
    Plug 'morhetz/gruvbox'

		" setup
		Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
		Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
		Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"               
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>
