"updated at March 1, 2017
"####################Xiangyu################
""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""
set nocompatible " iMproved
filetype off     " required!

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'bkbncn/vim-filetype-detector'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

Plugin 'Raimondi/delimitMate'
au FileType python let b:delimitMate_nesting_quotes = ['"']

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'

Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'       
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
nnoremap <Leader>p :CtrlP<cr>
nnoremap <Leader>bb :CtrlPBuffer<cr>
nnoremap <Leader>bm :CtrlPMixed<cr>
nnoremap <Leader>bs :CtrlPMRU<cr>

Plugin 'Lokaltog/vim-easymotion'

Plugin 'klen/python-mode'

Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'godlygeek/tabular'
"nmap <Leader>a= :Tabularize /=<CR>
"vmap <Leader>a= :Tabularize /=<CR>
"nmap <Leader>a: :Tabularize /:\zs<CR>
"vmap <Leader>a: :Tabularize /:\zs<CR>
Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xnoremap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)

Plugin 'mbbill/undotree'
nnoremap <Leader>u :UndotreeToggle<CR>

Plugin 'scrooloose/nerdtree'
nnoremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/syntastic'
nnoremap <Leader>s :Errors<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pyflakes']

Plugin 'majutsushi/tagbar'
nnoremap <silent> <leader>t :TagbarToggle<CR>

Plugin 'verilog.vim'
Plugin 'kdurant/verilog-testbench'

""
Plugin 'davidhalter/jedi-vim'

Plugin 'ervandew/supertab'

Plugin 'Shougo/neocomplete.vim'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

Plugin 'honza/vim-snippets'
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

call vundle#end()

""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
syntax enable
syntax on

filetype plugin indent on

colorscheme solarized
set background=dark				
se  t_Co=16

set number
set ruler
set cursorline          " Highlight current line
set laststatus=2               " Always show the statusline
set cmdheight=2           " Make the command area two lines high
set noshowmode          " Don't show the mode since Powerline will shows it
set title               " Set the title of the window in the terminal to the file
set showcmd                    " show the command you're running in the status bar
set hidden
set synmaxcol=999       " Syntax coloring too-long lines is slow
set fileencoding=utf-8    
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5
set autoread            " Automatically reload changes if detected
set autowrite           " Writes on make/shell commands
set wildmenu
set scrolloff=3                " Keep three lines below the last line when scrolling
set spelllang=en_us     " :set spell to start spell check
set showmatch
set foldmethod=indent
set foldlevel=99
set ttimeoutlen=40
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

" Text Format
set tabstop=8           " ts
set shiftwidth=4        " sw 
set softtabstop=4       " every backspace delete #sts spaces
set expandtab           " et, enpend TAB to space,Ctrl-V<TAB> to input TAB
set smarttab            " sta
set smartindent         " si
set backspace=2         " Allow backspacing over autoindent, EOL, and BOL

" Searching
set ignorecase "ic, Case insensitive search
set smartcase  "Non-case sensitive search
set incsearch  "is, Incremental search, partial match
set hlsearch   "hls, Highlight search results

" Mouse
set mouse=a    " Mouse in all modes
set mousemodel=popup
set clipboard+=unnamed        " Yanks go on clipboard instead.

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

"Insert newline without entering insert mode
nnoremap <Leader>O O<Esc>j
nnoremap <Leader>o o<Esc>k

"press jk to exit from insert mode
imap kj <Esc>

" Change mapleader
nmap <Space> <Leader>

" Fast saving
nnoremap <Leader>w :w!<cr>
"####################Xu####################

