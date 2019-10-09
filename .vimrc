source ~/.vim/bundles.vim

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

filetype plugin indent on
syntax on

set background=dark
color cosme

au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

set incsearch
set ignorecase
set smartcase

set history=200
set nocompatible
set nofoldenable
set confirm
set backspace=indent,eol,start
set t_Co=256
set mouse=a
set report=0
set nowrap
set scrolloff=5
set number
set showmatch
set showcmd
set title
set laststatus=2
set matchtime=2
set matchpairs+=<:>
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

let g:rbpt_max = 16

let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

let mapleader=';'

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

let g:EasyMotion_leader_key = '<Leader>'

let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

autocmd FileType c setlocal omnifunc=ccomplete#Complete

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

autocmd BufWritePost * call system("ctags -R")

autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

cmap w!! %!sudo tee >/dev/null %
