"Xiangyu updated at Aug 14, 2017
""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'bkbncn/vim-filetype'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Raimondi/delimitMate'
au FileType python let b:delimitMate_nesting_quotes = ['"']
Plugin 'jiangmiao/auto-pairs'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"let g:airline#extensions#tabline#enabled = 1   
"let g:airline#extensions#tabline#fnamemod = ':t'  "Only show filename 
let g:airline_theme='solarized'

Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }      
let g:ctrlp_user_command = ['find %s -type f', '.git', 'cd %s && git ls-files -co --exclude-standard']
nnoremap <Leader>p :CtrlP<cr>
nnoremap <Leader>bb :CtrlPBuffer<cr>
nnoremap <Leader>bm :CtrlPMixed<cr>
nnoremap <Leader>bs :CtrlPMRU<cr>

Plugin 'jeetsukumaran/vim-buffergator'
" Close the current buffer and move to the previous one
nnoremap <Leader>bq :bp <BAR> bd #<cr>

Plugin 'Lokaltog/vim-easymotion'

Plugin 'matze/vim-move'
let g:move_key_modifier = 'C'

Plugin 'python-mode/python-mode'
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xnoremap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)

Plugin 'mbbill/fencview'
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

Plugin 'vim-syntastic/syntastic'
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
nnoremap <Leader>t :TagbarToggle<CR>


Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>" 

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.dotfiles/ycm_extra_conf.py"
nnoremap <Leader>jd :YcmCompleter GoTo<CR>
nnoremap <Leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>jf :YcmCompleter GoToDefinition<CR>

call vundle#end()

""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
filetype plugin indent on

syntax enable

set t_Co=256
set background=dark
colorscheme solarized

set number
set ruler
set cursorline          " Highlight current line
set laststatus=2        " Always show the statusline
set showcmd             " show the command you're running in the status bar
set hidden
set synmaxcol=999       " Syntax coloring too-long lines is slow
set encoding=utf-8 nobomb
set fileencoding=utf-8    
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set autoread            " Automatically reload changes if detected
set autowrite           " Writes on make/shell commands
set wildmenu
set scrolloff=3         " Keep three lines below the last line when scrolling
set spelllang=en_us     " :set spell to start spell check
set showmatch           " brackets
set foldmethod=syntax
set nofoldenable
set foldlevel=99
set noswapfile      " no swap files

" Indentation
set autoindent
set smartindent
set cindent
set tabstop=4           " ts
set shiftwidth=4        " sw 
set softtabstop=4       " every backspace delete #sts spaces
set expandtab           " et, enpend TAB to space,Ctrl-V<TAB> to input TAB

" Compare
set diffopt+=vertical

" Searching
set incsearch           " is, Incremental search, partial match
set hlsearch            " hls, Highlight search results 
set ignorecase          " ic, Case insensitive search
set smartcase           " Non-case sensitive search

" Mouse
set mouse+=a            " Mouse in all modes
set mousemodel=popup
set clipboard+=unnamed  "Yanks go on clipboard instead." 

" Change mapleader
"let mapleader = ","
nmap <Space> <Leader>

" Fast saving
nnoremap <Leader>w :w!<cr>

"Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

"Insert newline without entering insert mode
nnoremap <Leader>O O<Esc>j
nnoremap <Leader>o o<Esc>k

" Only insert newlines in modifiable buffers otherwise use the regular <Enter> or <S-Enter> behaviour.
function s:NewlineOrEnter(before)
    let l:cmd = a:before ? 'O' : 'o'
    let l:returnCmd = a:before ? "\<S-Enter>" : "\<Enter>"
    if &modifiable
        return l:cmd . "\<Esc>"
    endif
    return l:returnCmd
endfunction
" Insert new lines without going into insert mode.
nnoremap <expr> <S-Enter> <SID>NewlineOrEnter(1)
nnoremap <expr> <Enter> <SID>NewlineOrEnter(0)

"press kj to exit from insert mode
inoremap kj <Esc>

" Visual mode pressing * or # searches for the current selection
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Go to the previously accessed window or the next one if the previously
" accessed window is the same as the current window.
function s:PreviousOrNextWindow()
    silent! wincmd p
    if winnr() == winnr('#') || winnr('#') == 0
        silent! wincmd W
    endif
endfunction
" Go to next window below/right.
nnoremap <C-W>n <C-W>w
" Go to next window above/left.
nnoremap <C-W>p <C-W>W
" Go to the previously accessed window.
nnoremap <silent> <C-W><C-W> :call <SID>PreviousOrNextWindow()<CR>

" Yank from the cursor to the end of the line, like D.
nnoremap Y y$

"settings for makeprg
au FileType c set makeprg=gcc\ -Wall\ -o\ %<\ %
au FileType cpp set makeprg=g++\ -Wall\ -o\ %<\ %\ --std=c++11

func! CompileRun()
  exec "w"  
  make
  if len(getqflist()) == 0
    exec "! ./%<"
  else
    copen
  endif
endfunc
nnoremap <Leader>rr :call CompileRun()<CR>
nnoremap <Leader>re :!./%<<cr>
