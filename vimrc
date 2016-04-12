"updated at April 12, 2016
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
Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-repeat'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'Raimondi/delimitMate'
au FileType python let b:delimitMate_nesting_quotes = ['"']

Plugin 'bling/vim-airline'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'       
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
	
Plugin 'fholgado/minibufexpl.vim'
noremap <leader>bn :MBEbn<CR>
noremap <leader>bp :MBEbp<CR>
noremap <leader>bf :MBEbf<CR>
noremap <leader>bb :MBEbb<CR>
noremap <leader>bd :MBEbd<CR>

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Lokaltog/vim-easymotion'

"Plugin 'ivanov/vim-ipython'
Plugin 'klen/python-mode'

Plugin 'godlygeek/tabular'
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

Plugin 'mbbill/undotree'
nnoremap <Leader>u :UndotreeToggle<CR>

Plugin 'scrooloose/nerdtree'
nnoremap <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plugin 'scrooloose/syntastic'
nnoremap <Leader>s :Errors<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
set smarttab            " sta,在行首按TAB将加入sw个空格，否则加入ts个空格
set smartindent         " si
set backspace=2         " Allow backspacing over autoindent, EOL, and BOL

" Searching
set ignorecase "ic, Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  "is, Incremental search, partial match
set hlsearch   "hls, Highlight search results

" Mouse
set mouse=a    " Mouse in all modes
set mousemodel=popup
set clipboard+=unnamed        " Yanks go on clipboard instead.

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

"" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"上下左右键的行为 会显示其他信息
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

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

"Change mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>

"####################Xu####################

