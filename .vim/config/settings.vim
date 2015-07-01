" Fonts
set gfn=Source\ Code\ Pro\ Semibold:h15
color solarized
syntax on
set t_Co=256

set shellpipe=>

" Convert tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Handle long lines appropriately
set formatoptions=qrn1
set textwidth=79

" Show whitespace characters for tabs and spaces
set list
set listchars=tab:▸\ ,trail:·

" C, C++, and Java files have 4 spaces per tab
for ext in ["c", "cpp", "java"]
  execute 'au FileType ' . ext . ' set expandtab'
  execute 'au FileType ' . ext . ' set shiftwidth=4'
  execute 'au FileType ' . ext . ' set softtabstop=4'
  execute 'au FileType ' . ext . ' set tabstop=4'
endfor

" Setup indent guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Use 'normal' regex handling in searches
nnoremap / /\v
vnoremap / /\v

set autoindent
set autowrite
set backspace=indent,eol,start
set copyindent
set colorcolumn=80
set cursorline
set encoding=utf-8
set gdefault
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set modelines=0
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set nowrap
set relativenumber
set ruler
set scrolloff=3
set showcmd
set showmatch
set showmode
set smartcase
set splitbelow
set splitright
set ttyfast
set undofile
set undolevels=1000
set vb t_vb=
set visualbell
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu
set wildmode=list:longest
" TCK custom
let coffee_indent_keep_current = 1
set foldmethod=indent
set foldnestmax=1
" filetype to etension mappings
au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.hbs set filetype=html
au BufRead,BufNewFile *.md set filetype=markdown

let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*' " MacOSX/Linux
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_mruf_include = '\.coffee$\|\.java|\.vim|\.vimrc$'
let g:ctrlp_mruf_max = 4096
let g:ctrlp_cmd = 'CtrlPMRU'
" Gundo
nnoremap <F5> :GundoToggle<CR>
nnoremap <leader>ff :%!js-beautify -j -q -B -f -<CR>
