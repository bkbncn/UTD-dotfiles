" Xiangyu updated at Feb 26, 2019
""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/bundle')
Plug 'altercation/vim-colors-solarized'

Plug 'bkbncn/vim-filetype'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
"Plugin 'tpope/vim-unimpaired'
"Plugin 'Raimondi/delimitMate'
"au FileType python let b:delimitMate_nesting_quotes = ['"']
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#fnamemod = ':t'  "Only show filename
let g:airline_theme='solarized'

Plug 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
let g:ctrlp_user_command = ['find %s -type f']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
nmap <Leader>p :CtrlP<CR>
nmap <Leader>pb :CtrlPBuffer<CR>
nmap <Leader>pm :CtrlPMixed<CR>
nmap <Leader>pr :CtrlPMRU<CR>

"Plug 'easymotion/vim-easymotion'

"switch between buffer with gb gB or [b ]b
Plug 'jeetsukumaran/vim-buffergator'
" Close the current buffer and move to the previous one
nmap <Leader>bd :bp <BAR> bd #<CR>

"move lines by C-j and C-k
Plug 'matze/vim-move'
let g:move_key_modifier = 'C'

" Indent guide by <Leader>ig
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
Plug '/proj/ndl/home/xxx110230/linuxbrew/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"Plug 'mbbill/fencview'
Plug 'mbbill/undotree'
nmap <Leader>u :UndotreeToggle<CR>

"Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeFocus', 'NERDTreeToggle', 'NERDTreeCWD', 'NERDTreeFind'] }
"map <space>n :NERDTreeToggle<CR>
"let g:NERDTreeMinimalUI = 1
"let g:NERDTreeDirArrows = 1
"let g:NERDTreeHijackNetrw = 0
"let NERDTreeIgnore = ['\.pyc$', '__pycache__']
"close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
nmap <C-_>  <Plug>NERDCommenterToggle  "Ctrl+/ also works
vmap <C-_>  <Plug>NERDCommenterToggle<CR>gv

Plug 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_command_wrapper = 'nice -n5'
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_set_highlights = 0
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
let g:ale_python_pylint_options = ' --disable=W'
let g:ale_linters = {
    \ 'c': ['gcc', 'clang'],
    \ 'cpp': ['gcc', 'clang'],
    \ 'python': ['pylint'],
    \ 'zsh': ['shell'],
    \ }
"let g:ale_linters.text = ['textlint', 'write-good', 'languagetool']
let g:ale_fixers = ['remove_trailing_lines','trim_whitespace', 'ale#fixers#generic_python#BreakUpLongLines', 'isort', 'yapf']
nmap <buffer> <silent> <LocalLeader>= :ALEFix<CR>
nmap <Leader>a  <Plug>(ale_detail) ":ALEDetail<CR>
nmap <Leader>an <Plug>(ale_next)
nmap <Leader>ap <Plug>(ale_previous)

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'
cnoreabbrev Ack Ack!
nmap <Leader>ag :Ack!<Space>

Plug 'skywind3000/asyncrun.vim'
" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']
"cooperate with vim-fugitive
let g:asyncrun_status = ''
"cooperate with vim-airline
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
" grep current word in folder
if executable('ag')
    map <silent><Leader>rw :AsyncRun! -cwd=<root> ag -n --no-heading
        \ --color never -g *.h -g *.c* -g *.py -g *.js -g *.vim
        \ <C-R><C-W> "<root>" <cr>
else
    map <silent><Leader>rw :AsyncRun! -cwd=<root> grep -n -s -R <C-R><C-W>
        \ --include='*.h' --include='*.c*' --include='*.py'
        \ --include='*.js' --include='*.vim'
        \ '<root>' <cr>
endif
" F4: update Makefile with cmake
"nmap <silent> <F4> :AsyncRun -cwd=<root> cmake . <CR>
" F5: run the single file
"nmap <silent> <F5> :AsyncRun -raw -cwd=$( VIM_FILEDIR,) "$( VIM_FILEDIR,)/$( VIM_FILENOEXT,)" <CR>
" Quick run via <F5>
function! s:compile_and_run()
    let l:cmd = {
    \ 'c' : "gcc % -std=c99 -o %<; time ./%<",
    \ 'sh' : "time bash %",
    \ 'go' : "go run %",
    \ 'cpp' : "g++ -std=c++14 % -o %<; time ./%<",
    \ 'ruby' : "time ruby %",
    \ 'java' : "javac %; time java %<",
    "\ 'rust' : "rustc % -o %<; time ./%<",
    \ 'python' : "time python %",
    \}
    let l:ft = &filetype
    if has_key(l:cmd, l:ft)
      exec 'w'
      exec "AsyncRun! ".l:cmd[l:ft]
    else
      echoerr "AsyncRun not supported in current filetype!"
    endif
endfunction
nmap <F5> :call <SID>compile_and_run()<CR>
" F6: run project test
"nmap <silent> <F6> :AsyncRun -cwd=<root> -raw make test <CR>
" F7: build project
"nmap <silent> <F7> :AsyncRun -cwd=<root> make <CR>
" F8: run project
"nmap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <CR>
" F9: compile the single file
"nmap <silent> <F9> :AsyncRun gcc -Wall -O2 "$( VIM_FILEPATH,)" -o "$( VIM_FILEDIR,)/$( VIM_FILENOEXT,)" <CR>
" toggle quickfix window
nmap <F10> :call asyncrun#quickfix_toggle(6)<CR>
"Plug 'sillybun/vim-repl'
"Plug 'vim-vdebug/vdebug'

Plug 'majutsushi/tagbar'
nmap <Space>t :TagbarToggle<CR>

"Plug 'kana/vim-textobj-user'
"Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }
"Plug 'justinmk/vim-syntax-extra', { 'for': ['c', 'cpp'] }
"Plug 'sheerun/vim-polyglot'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"Python related
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0
let g:pymode_doc=0
let g:pymode_lint=0
let g:pymode_virtualenv=1
let g:pymode_breakpoint=1
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_folding=1
let g:pymode_indent=1
let g:pymode_run=1
"Plug 'jeetsukumaran/vim-pythonsense', {'for': 'python'}
"Plug 'tmhedberg/SimpylFold', {'for': 'python'}
"Plug 'lambdalisue/vim-pyenv', {'for': 'python'}


"Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_allow_unsafe_content = 1
Plug 'tpope/vim-markdown', {'for': 'markdown'}
"Plug 'jtratner/vim-flavored-markdown', {'for': 'markdown'}


Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<C-j>"
"let g:UltiSnipsExpandTrigger="<C-f>"
"let g:UltiSnipsJumpForwardTrigger="<C-f>"
"let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsSnippetsDir = $HOME.'/.dotfiles'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.dotfiles', 'UltiSnips']

Plug 'Valloric/YouCompleteMe'
set completeopt=longest,menu
"Enable TAB for other Plugins, like UltiSnips
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_cache_omnifunc=0
let g:ycm_confirm_extra_conf=0
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_global_ycm_extra_conf = "~/.dotfiles/ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path='python'
nmap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <Leader>gg :YcmCompleter GoTo<CR>
"nmap <Leader>gc :YcmCompleter GoToDeclaration<CR>
"nmap <Leader>gf :YcmCompleter GoToDefinition<CR>
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plug 'tenfyzhong/CompleteParameter.vim'
call plug#end()

""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
set nocompatible
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
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set autoread            " Automatically reload changes if detected
set autowrite           " Writes on make/shell commands
set wildmenu
set scrolloff=3         " Keep three lines below the last line when scrolling
set spelllang=en_us     " :set spell to start spell check
set showmatch           " brackets
set list lcs=tab:>-,trail:¬,nbsp:%,extends:>,precedes:<

set backup
set writebackup
set backupdir=~/.vim/backups
silent! call mkdir(expand('~/.vim/backups'), "p", 0755)
set backupext=~bk
set noundofile
set noswapfile      " no swap files

" Split window location
set splitbelow "Default above
"set splitright "Default left

" Enable folding
set foldmethod=syntax
set foldlevel=99
set nofoldenable

" Indentation
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4       " every backspace delete # spaces
set expandtab           " enpend TAB to space,Ctrl-V<TAB> to input TAB

" Compare
set diffopt+=vertical

" Searching
"set incsearch           " Incremental search, partial match
"set hlsearch            " Highlight search results
"set ignorecase          " Case insensitive search
"set smartcase           " Non-case sensitive search

" Mouse
set mouse+=a            " Mouse in all modes
set mousemodel=popup
set clipboard=unnamed  "Yanks on system clipboard

" Fix backspace not working in insert mode
set backspace=2

" Change mapleader
"let mapleader = "Space"
nmap <Space> <Leader>
vmap <Space> <Leader>

" Fast saving
nnoremap <Leader>w :w!<CR>

" Emacs shotcut
map! <C-A> <Home>
map! <C-E> <End>
map! <C-D> <Del>
"map! <C-H> <Left> "not working, still <BS>
cmap <C-b> <Left>  "not working at Insert Mode
map! <C-J> <Down>
map! <C-K> <Up>
map! <C-L> <Right>

"Keep search pattern at the center of the screen.
nmap <silent> n nzz
nmap <silent> N Nzz
nmap <silent> * *zz
nmap <silent> # #zz
nmap <silent> g* g*zz

"Insert newline without entering insert mode
nmap <Leader>O O<Esc>j
nmap <Leader>o o<Esc>k

"press kj to exit from insert and visual mode
inoremap kj <Esc>
vnoremap kj <Esc>

" Toggle Vexplore like NERDTree
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <space>n :call ToggleVExplorer()<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"let g:netrw_list_hide= netrw_gitignore#Hide()

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
vmap <silent> * :call VisualSelection('f', '')<CR>
vmap <silent> # :call VisualSelection('b', '')<CR>

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

" :DiffWhat to see what was changed
if !exists(":DiffWhat")
  command DiffWhat vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

" close quickfix if no other windows
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Convert ^M to newline
" <Ctrl-V><Ctrl-M>
" :g/^M/s// /g may also work
" :%s//\r will get more blanklines
command ConvertM %s///

" Merge multiple blank lines into single blank line
" :%!cat -s  wil also work
command MergeBlankLines g/^$/,/./-j

" Trim all trailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
command! TrimWhiteSpace call TrimWhitespace()

"------------Start Python PEP 8 stuff----------------
"omnicomplete
"autocmd FileType python set omnifunc=pythoncomplete#Complete

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=80

" For full syntax highlighting:
let python_highlight_all=1

" make backspaces more powerfull
set backspace=indent,eol,start

"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"----------Stop python PEP 8 stuff--------------

