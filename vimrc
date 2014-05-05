call pathogen#infect()
Helptags
"START VUNDLE
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 Plugin 'christoomey/vim-tmux-navigator'
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Plugin commands are not allowed.
" " Put your stuff after this line
"END VUNDLE


set runtimepath^=~/.vim/bundle/ctrlp.vim
"au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
set hidden
set nowrap        " don't wrap lines
set tabstop=2     " a tab is two spaces
set expandtab
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set copyindent    " copy the previous indentation on autoindenting
set smartindent   " does thte right thing (mostly) in programs
set autoindent    " always set autoindenting on
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set so=7 " set 7 lines to the cursor when moving vertically
set wildmenu
filetype plugin indent on

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-PageDown> gt
nmap <silent> ,/ :nohlsearch<CR>
au BufRead,BufNewFile *.md set filetype=markdown
"nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cmd = 'CtrlPMRU'
"let g:ctrlp_by_filename=1
let g:ctrlp_mruf_max=1024
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
	\ 'file': '\.jar|\.exe$\|\.so$\|\.dat$'
	\ }
"let g:ctrlp_extensions= ['mixed']
set dir=~/.vimswpfiles
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set ruler
set t_Co=256
syntax enable
set background=dark
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
set pastetoggle=<F10>
"attempt to make vim run faster in terminal 
set nocursorcolumn
set nocursorline
"syntax sync minlines=256
syntax sync minlines=64
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
nmap <F9> :TagbarToggle<CR>
let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'
nmap <F8> :TagbarToggle<CR>
vnoremap <D-c> "*y
vnoremap <D-v> "*p

"set background=dark
" option name default optional ------------------------------------------------ g:solarized_termcolors= 16 | 256 g:solarized_termtrans = 0 | 1 g:solarized_degrade = 0 | 1 g:solarized_bold = 1 | 0 g:solarized_underline = 1 | 0 g:solarized_italic = 1 | 0 g:solarized_contrast = "normal"| "high" or "low" g:solarized_visibility= "normal"| "high" or "low" ------------------------------------------------
"let g:solarized_termcolors=256
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"

colorscheme molokai
let g:tern_map_keys=1
let g:tern_show_argument_hints="on_hold"
"replace h1 with h1 html tag
:iabbr h1 <h1></h1>
":abbr h1 <h1></h1>
"tab shortcuts
"nnoremap th  :tabfirst<CR>
"nnoremap tl  :tablast<CR>
nnoremap th  :tabprev<CR>
nnoremap tl  :tabnext<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
imap jj <esc>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>
let g:mustache_abbreviations = 1
au BufRead,BufNewFile *.hbs set filetype=mustache
autocmd QuickFixCmdPost *grep* cwindow
"autocmd BufWrite *.coffee execute ':s/^[  ]+/	/g'
"from amix.dk
"for regex turn magic on
"magic
set viminfo+=! " Store upper-case registers in viminfo
