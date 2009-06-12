"set autoindent
"set cindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set hidden
set completeopt=menu,menuone
filetype plugin on
filetype indent on

" colors
set background=dark
colo earendel
"colo evening
"colo ron
"colo murphy

" haskell
au Bufenter *.hs compiler ghc
let g:haddock_browser = "firefox"

" ocaml
"map _ :!omake && ocaml *.cmo<CR>

" from Borko
"nmap <TAB> >>
"map gs <C-w>w
"nnoremap <C-n> :noh<RETURN>
"map vv V
"vmap ) di()<ESC>hp
"vmap ( )
"vmap [ di)<ESC>hp
