" Escape using jj
ino jk <esc>
cno jk <c-c>

nnoremap Q <nop>
map q <Nop>

noremap <C-H> ^
noremap <C-L> g_
noremap <C-J> 5j
noremap <C-K> 5k

" Enter Visual Mode with Leader x 2
nmap <leader><leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


vmap <Leader>y "+y 
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" Change search result using cs then . to repeat
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

nnoremap <leader>f :FZF<return>
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w !sudo tee % > /dev/null %<return>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>v :vsp<CR>

map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>

" Enter to end, Backspace to top
nnoremap <CR> G
nnoremap <BS> gg
" tab navigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nmap <Leader>ta :tabprevious<CR>
nmap <Leader>ts   :tabnext<CR>
nmap <Leader>tn :tabnew<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=0
nnoremap <leader>n :NERDTreeToggle<CR>

" Forces < and > movement in normal & visual mode
noremap <Up> <Nop>
noremap <Down> <Nop>
nnoremap <Left> <Nop> 
nnoremap <Right> <Nop>

nmap < <<
nmap > >>
vmap < <gv
vmap > >gv

" Gundo Toggle
nnoremap <leader>u :GundoToggle<Return>
" Comments toggle
nmap <Leader>cc :Commentary<cr>

" Removes Hightlights from search
noremap <esc> :noh<return><esc>

noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$

" Emmet Completion
imap hh <C-Y>,<esc>li

nnoremap <Leader>b :Buffers<return>
nnoremap <Leader>l :BLines<return>
nnoremap <Leader>m :History<return>

" Snippets
nnoremap <Leader>i :Snippets<return>
inoremap <Leader>i <ESC>:Snippets<return>

nnoremap <silent><Leader>ee :Unite menu:vim -silent<return>
nmap ;; :
