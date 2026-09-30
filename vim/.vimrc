set hidden
set number
set numberwidth=2
set virtualedit=block

" Keep a stable block cursor through SSH.
let &t_SI = "\e[1 q"
let &t_SR = "\e[1 q"
let &t_EI = "\e[1 q"

" start of search
set path=.,**
set wildmenu

function! DotfilesOpenQuickfix(command) abort
  copen
  call clearmatches()

  if a:command =~# 'vimgrep'
    let l:title = getqflist({'title': 1}).title
    let l:search_term = matchstr(l:title, '\/\zs.\{-}\ze\/')
    if !empty(l:search_term)
      call matchadd('Search', l:search_term)
    endif
  endif

  wincmd p
endfunction

augroup dotfiles_quickfix
  autocmd!
  autocmd QuickFixCmdPost [^l]* call DotfilesOpenQuickfix(expand('<amatch>'))
augroup END

" match navigation
nnoremap gn :cnext<CR>
nnoremap gN :cprevious<CR>

" buffer navigation
nnoremap L :bnext<CR>
nnoremap H :bprevious<CR>

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" indentation
set autoindent
filetype indent on
set smarttab
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set wrap

" subtle whitespace display
command! ShowIndent set list!
set nolist
set listchars=tab:•\ ,multispace:•,leadmultispace:•,trail:•,nbsp:␣
highlight Whitespace ctermfg=darkgray guifg=#444444
highlight NonText    ctermfg=darkgray guifg=#444444
highlight SpecialKey ctermfg=darkgray guifg=#444444

" explorer navigation
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Keep escape-key sequences responsive over SSH.
set ttimeout
set ttimeoutlen=50

" statusline
set laststatus=2
set statusline=%F\ %m%r%h%w\ [%Y]\ [%{&ff}]\ [Line:%l/%L,Col:%c]\ [%p%%]
