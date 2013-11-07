"updated at Nov 7, 2013
"####################Xiangyu################
""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""
set nocompatible " iMproved
filetype off     " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bkbncn/vim-filetype-detector'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'matchit.zip'

Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

Bundle 'Raimondi/delimitMate'
au FileType python let b:delimitMate_nesting_quotes = ['"']

Bundle 'bling/vim-airline'

Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
	
Bundle 'techlivezheng/vim-plugin-minibufexpl'
noremap <leader>bf :MBEbf<CR>
noremap <leader>bb :MBEbb<CR>
noremap <leader>bn :MBEbn<CR>
noremap <leader>bp :MBEbp<CR>
noremap <leader>bd :MBEbd<CR>

Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'techlivezheng/vim-plugin-minibufexpl'

Bundle 'Lokaltog/vim-easymotion'

Bundle 'ivanov/vim-ipython'
Bundle 'klen/python-mode'
"Bundle 'nvie/vim-flake8'

Bundle 'godlygeek/tabular'
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

Bundle 'mbbill/undotree'
nnoremap <Leader>u :UndotreeToggle<CR>

Bundle 'scrooloose/nerdtree'
nnoremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeDirArrows=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
Bundle 'scrooloose/nerdcommenter'

Bundle 'scrooloose/syntastic'
nnoremap <Leader>s :Errors<CR>
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format='[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_python_checkers=['pylint']

Bundle 'benmills/vimux'
nnoremap <Leader>vp :VimuxPromptCommand<CR>
vnoremap <Leader>vs "vy :call VimuxRunCommand(@v . "\n", 0)<CR>
nnoremap <Leader>vx :VimuxClosePanes<CR>
nnoremap <Leader>vq :VimuxCloseRunner<CR>
nnoremap <Leader>vi :VimuxInspectRunner<CR>
nnoremap <Leader>vl :VimuxRunLastCommand<CR>
nnoremap <Leader>vc :VimuxClearRunnerHistory<CR>

Bundle 'majutsushi/tagbar'
nnoremap <silent> <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus=1
let g:tagbar_expand=1
let g:tagbar_foldlevel=2
let g:tagbar_autoshowtag=1

Bundle 'verilog.vim'

Bundle 'kdurant/verilog-testbench'

""
Bundle 'honza/vim-snippets'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'

Bundle 'davidhalter/jedi-vim'

Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"
Bundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_delimiter=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory="$HOME/.vim/bundle/vim-snippets/snippets"
let g:neosnippet#enable_snipmate_compatibility=1
" Plugin key-mappings
imap <C-K> <Plug>(neosnippet_expand_or_jump)
smap <C-K> <Plug>(neosnippet_expand_or_jump)
xmap <C-K> <Plug>(neosnippet_expand_target)
" Map <C-E> to cancel completion
inoremap <expr><C-E> neocomplcache#cancel_popup()
" SuperTab like snippets behavior
inoremap <expr><Tab> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-N>" : "\<Tab>"
snoremap <expr><Tab> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
" CR/S-CR: close popup and save indent
inoremap <expr><CR> delimitMate#WithinEmptyPair() ? "\<C-R>=delimitMate#ExpandReturn()\<CR>" : pumvisible() ? neocomplcache#close_popup() : "\<CR>"
inoremap <expr><S-CR> pumvisible() ? neocomplcache#close_popup() "\<CR>" : "\<CR>"
" For snippet_complete marker
if has('conceal')
    set conceallevel=2 concealcursor=i
endif


""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
syntax enable
syntax on

filetype on
filetype indent on
filetype plugin on
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
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set autoread            " Automatically reload changes if detected
set autowrite           " Writes on make/shell commands
set wildmenu
set iskeyword+=\$,-           " Add extra characters that are valid parts of variables
set scrolloff=3                " Keep three lines below the last line when scrolling
set spelllang=en_us     " :set spell to start spell check
set showmatch
set pastetoggle=<F11>
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
"set nowrapscan 

" Mouse
set mouse=a    " Mouse in all modes
set mousemodel=popup
set clipboard+=unnamed        " Yanks go on clipboard instead.

" auto completion
"set pumheight=7          " Keep a small completion window
" Ignore these files when completing
"set wildignore+=*.o,*.obj,.git,*.pyc
"set wildignore+=eggs/**
"set wildignore+=*.egg-info/**

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

" Fixes common typos
command! W w
command! Q q

"press jk to exit from insert mode
imap jk <Esc>

let g:netrw_list_hide='.DS_Store,^\.git/$'    " Hide .DS_Store and .git

"####################Xu####################

