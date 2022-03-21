"Vim Plugin
call plug#begin('~/.vim/pluged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'bronson/vim-trailing-whitespace'
Plug 'dense-analysis/ale'
Plug 'preservim/tagbar'
call plug#end()


"Map
let mapleader = ","
let maplocalleader="_"
"nnoremap <TAB> :tabnext<CR>
inoremap <TAB> <C-R>=InserTabWrapper()<CR>
nnoremap <leader>tb :NERDTreeToggle<CR>
nnoremap <leader>tf :NERDTreeFind<CR>
nnoremap <F1> :bnext<cr>
let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Set
filetype plugin indent on
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set tabstop=2
set noexpandtab
set clipboard=unnamedplus
set clipboard=unnamed
set number
set relativenumber
set exrc
set secure
set backupdir=~/.vimbackup
set directory=/tmp


"Theme
colorscheme gruvbox
"colorscheme pablo
"
"
"automcd
autocmd BufNewFile,BufRead *.txt set filetype=txt
autocmd FileType txt set dictionary=~/.vim/dict/sl_dict.txt
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect
	set shortmess+=c
	function! InserTabWrapper()
		let col=col('.')-1
		if !col || getline('.')[col-1] !~ '\k'
			return "\<TAB>"
		else
			return "\<C-N>"
		endif
	endfunction

