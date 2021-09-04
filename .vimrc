" Global settings for all files (but may be overridden in ftplugin)

"""Vim-plug
""call plug#begin('~/.vim/plugged')
""Plug 'Valloric/YouCompleteMe'
""Plug 'sjl/gundo.vim'
""Plug 'rking/ag.vim'
""Plug 'wikitopian/hardmode'
""Plug 'francoiscabrol/ranger.vim'
"""Next one needed by ranger.vim in neovim
""Plug 'rbgrouleff/bclose.vim'
""Plug 'ctrlpvim/ctrlp.vim'
""Plug 'tacahiroy/ctrlp-funky'
""Plug 'morhetz/gruvbox'
""Plug 'itchyny/lightline.vim'
""Plug 'KabbAmine/vCoolor.vim'
""Plug 'mattn/emmet-vim'
""Plug 'hail2u/vim-css3-syntax'
""Plug 'tpope/vim-surround'
""Plug 'pangloss/vim-javascript'
""Plug 'sbdchd/neoformat'
""Plug 'idest/vim-instant-markdown'
""Plug 'mhinz/vim-startify'
""Plug 'mxw/vim-jsx'
""Plug 'styled-components/vim-styled-components'
"""Plug 'tpope/vim-vinegar'
""Plug 'majutsushi/tagbar'
""call plug#end()

"""Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "call vundle#begin('~/installation/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'wikitopian/hardmode'
Plugin 'francoiscabrol/ranger.vim'
"Next one needed by ranger.vim in neovim
Plugin 'rbgrouleff/bclose.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'sbdchd/neoformat'
Plugin 'idest/vim-instant-markdown'
Plugin 'mhinz/vim-startify'
Plugin 'mxw/vim-jsx'
Plugin 'styled-components/vim-styled-components'
"Plugin 'tpope/vim-vinegar'
Plugin 'majutsushi/tagbar'
Plugin 'vimwiki/vimwiki'
Plugin 'patriciogonzalezvivo/vim-glslViewer.git'
Plugin 'tikhomirov/vim-glsl'
Plugin 'ap/vim-css-color'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

"""Searching
set ignorecase "" ignore case in searches and substitutions
set smartcase "" override ignorecase when using a capital letter

"""Styling
syntax enable " enable syntax processing
" highlight ExtraWhitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
colorscheme gruvbox
set termguicolors
set background=dark
let g:gruvbox_contrast_light='medium'
let g:gruvbox_invert_selection=0
if $TERM == "xterm-termite"
  set termguicolors
  set background=light
  let g:gruvbox_contrast_light='medium'
endif
set listchars=trail:~,space:·
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
match Todo /\s\+$/ " highlight trailing whitespace
match ExtraWhiteSpace /\s\+$/ "mark trailing whitespace as ExtraWhitespace

"""Spaces & Tabs

set tabstop=2 " number of spaces per TAB when reading a file
set shiftwidth=2 " number of spaces when indenting with >
set expandtab " when using tab, insert spaces

"""UI config

set number " show line numbers
set relativenumber " show relative line numbers
set showcmd " show last command in bottom bar
set cursorline " highlight current line
filetype plugin indent on " load filetype specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set completeopt-=preview " do not show preview of function when using autocomplete

"""Searching

set incsearch " search as characters are entered
set hlsearch " highlight matches

"""Folding

set foldenable " enable folding
set foldlevelstart=10 " open folds of up to 10 lines by default
set foldnestmax=6 " set max number of nested folds to 6
" space open/close folds
" nnoremap <space> za
set foldmethod=indent " fold based on indent level

"""Moving

" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move easier between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" highlight last inserted text
nnoremap gV `[v`]
" make backspace work like most programs "
set backspace=indent,eol,start

"""Navigation

" use F5 to quickly change buffer
" :nnoremap <F5> :buffers<CR>:buffer<Space>
" ignore the following files
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.svg
"set wildgnore+=.git
set wildignore+=*~,*.swp,*.tmp
" select buffer files
nnoremap <C-b> :CtrlPBuffer<CR>

"""Leader shortcuts and remaps

let mapleader="," " leader is comma
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc
nnoremap <leader>ev :bo sp $MYVIMRC<CR>
nnoremap <leader>etv :bo sp ~/.vimrc<CR>
nnoremap <leader>ez :bo sp ~/.zshrc<CR>
" source vimrc/zshrc 
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>stv :source ~/.vimrc<CR>
" use the silver searcher
nnoremap <leader>ag :Ag
" clear last used search pattern
nnoremap <leader><space> :let @/ = ""<CR>
" quit window
nnoremap <leader>qq :q<CR>
" quit vim
nnoremap <leader>qa :qa<CR>
" write buffer and quit window
nnoremap <leader>wq :wq<CR>
" write buffer
"nnoremap <leader>ww :w<CR>
" yank and paste text to X11 / Wayland clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
" list special characters (listchars)
nnoremap <leader>l :set list!<CR>
" shortcut for ctrlp-funky
nnoremap <leader>fu :CtrlPFunky<CR>
" shortcut for ranger.vim
nnoremap <leader>ff :Ranger<CR>
" shortcut for inserting single character
nnoremap <space> i_<ESC>r
"buffer navigation
nnoremap <leader>b :bp<CR>
nnoremap <leader>n :bn<CR>
"delete buffer without closing window
nnoremap <leader>d :b#\|bd #<CR>
"cd ~
nnoremap <leader>ch :cd ~<CR>
"cd to current's file folder
nnoremap <leader>cc :cd %:h<CR>
""
" search for pattern globally and with confirmation
nnoremap <leader>r :%s:::gc<left><left><left><left>
" include grouping (i.e '\(\)') in search pattern"
cmap ;\ \(\)<Left><Left>
" Move lines around
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
"""Insert mode remaps
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap `<CR> `<CR>`<ESC>0
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap /,. <right>
inoremap /., <left>
inoremap "" ""
inoremap '' ''
inoremap `` ``
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap "<Esc> "<Esc>
inoremap '<Esc> '<Esc>
inoremap `<Esc> `<Esc>
inoremap (<Esc> (<Esc>
inoremap [<Esc> [<Esc>
inoremap {<Esc> {<Esc>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
inoremap <C-l> <Esc>la
inoremap <C-h> <Esc>i
"" Terminal mode remaps
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> <C-\><C-n>

"" resize split windows
"width
"map <C-<> <C-w><
"map <C->> <C-w>>
"height
"map <C-+> <C-w>+
"map <C--> <C-w>-

""Functions
" follow symlinked file
function! FollowSymlink()
  let current_file = expand('%:p')
  " check if file type is a symlink
  if getftype(current_file) == 'link'
    " if it is a symlink resolve to the actual file path
    "   and open the actual file
    let actual_file = resolve(current_file)
    silent! execute 'file ' . actual_file
  end
endfunction

" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction

" follow symlink and set working directory
autocmd BufRead *
  \ call FollowSymlink() |
  \ call SetProjectRoot()

nnoremap <leader>cp :call SetProjectRoot()<CR>

"""YCM Config
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_auto_trigger = 1
""let g:ycm_python_binary_path = '/usr/bin/python'

"""CtrlP config
nnoremap <C-a> :CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_show_hidden = 1

"""VCoolor config
let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
nnoremap <leader>c :VCoolor<CR>

"""lightline config
set laststatus=2
set noshowmode
let g:lightline = {
  \'colorscheme': 'jellybeans',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename', 'modified', 'exampleComponent' ] ]
  \ },
  \ 'component': {
  \   'exampleComponent': ''
  \ },
  \ 'component_function': {
  \   'filename': 'LightLineFilename'
  \ }
  \ }
function! LightLineFilename()
  return expand('%')
endfunction

""" emmet config
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

""" Neoformat config

let g:neoformat_only_msg_on_error = 1
""let g:neoformat_verbose=1
"" it is needed to be running the file form ./node-modules scope
let g:neoformat_javascript_prettier = {
      \ 'exe': './node_modules/.bin/prettier',
      \ 'args': ['--single-quote', '--write'],
      \ 'replace': 1
      \ }
""augroup fmt
""  autocmd!
""  autocmd BufWritePre * undojoin | Neoformat
""augroup END

""" vim-instant-markdown config
let g:instant_markdown_autostart = 0
nnoremap <leader>ms :InstantMarkdownPreview<CR>
nnoremap <leader>mk :StopMarkdownPreview<CR>

"" vim-startify config
nnoremap <leader>st :Startify<CR>

""" vim-jsx config
let g:jsx_ext_required = 0

""" vim-vinegar config
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

""" ranger.vim config
let g:ranger_map_keys = 0
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory

""" vim tagbar config
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
nmap <leader>tt  :TagbarToggle<CR>

""" vimwiki config
set nocompatible
filetype plugin on
syntax on
nnoremap <leader><CR> :VimwikiVSplitLink<CR>

let g:vimwiki_hl_headers = 1

function! VimwikiLinkHandler(link)
  " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
  "   1) [[vfile:~/Code/PythonProject/abc123.py]]
  "   2) [[vfile:./|Wiki Home]]
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0
  endif
  let link_infos = vimwiki#base#resolve_link(link)
  if link_infos.filename == ''
    echomsg 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    exe 'tabnew ' . fnameescape(link_infos.filename)
    return 1
  endif
endfunction
