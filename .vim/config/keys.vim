" Ignore F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Ctrl-a and Ctrl-D to split and vertical split
nnoremap <C-d> :split<cr>
nnoremap <C-a> :vsplit<cr>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Leader-w to save
map <leader>w :w!<cr>

" Leader-q to quit
map <leader>q :q<cr>

" Leader-/ to clear the search buffer
nmap <silent> <leader>/ :nohlsearch<cr>

" Leader-m to open the current file in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Leader-rh to transition from the old Ruby hash syntax to the new one
map <leader>rh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>

" Leader-S to sort CSS properties
nnoremap <leader>S ?{<cr>jV/^\s*\}?$<cr>k:sort<cr>:noh<cr>

" Leader-y to toggle relative numbering
function ToggleNumbering()
  if (&number)
    set nonumber
    set relativenumber
  else
    set norelativenumber
    set number
  endif
endfunction
nnoremap <leader>y :call ToggleNumbering()<cr><cr>

" Leader-W to remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" Q to execute the recorded macro
nmap Q @q

" Z to format the current paragraph or selection
vmap Z gq
nmap Z gqap

" w!! to save a file with sudo
cmap w!! w !sudo tee % >/dev/null
map jgs mawv/ <CR>"ty/ <CR>wvwh"ny/getters<CR>$a<CR><CR><Esc>xxapublic
<Esc>"tpa<Esc>"npbiget<Esc>l~ea()<CR>{<CR><Tab>return
<Esc>"npa;<CR>}<Esc>=<CR><Esc>/setters<CR>$a<CR><CR><Esc>xxapublic void
<Esc>"npbiset<Esc>l~ea(<Esc>"tpa <Esc>"npa)<CR>{<CR><Tab>this.<Esc>"npa=
<Esc>"npa;<CR>}<Esc>=<CR>`ak
