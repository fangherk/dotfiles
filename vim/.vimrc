"" Herrick's Custom Vimrc file
execute pathogen#infect()
set t_Co=256


""" C config security 
set secure              " restrict usage of certain commands

""" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
""" Start with the color scheme
""" colorscheme molokai	    " Basic Color Scheme, ~/.vim/colors/xx.vim

""" Basic Processing
syntax enable   	    " enable syntax processing

""" Indent
set autoindent          " set some automatic indenting
set cindent             " set c indenting

""" Spaces & Tabs
set tabstop=4		    " number of visual spaces per TAB
set softtabstop=4	    " number of spaces in tab when editing
set shiftwidth=4        " useful for shiftwidths
set expandtab		    " tabs are spaces

" white spaces deleted on save
""" autocmd BufWritePre * :%s/\s\+$//e

""" UI Config
""" set colorcolumn=110     " create a diff color after 110 characters
highlight ColorColumn ctermbg=darkgray
set number		        " show line numbers
set showcmd 		    " show command in bottom bar
set cursorline		    " highlight current line
filetype plugin on      " add vim built-in plugins
""" filetype indent on 	    " load filetype-specific indent files, ~/.vim/indent/xx.vim
set wildmenu		    " visual autocomplete for command menu
set lazyredraw		    " redraw only when we need to

""" Searching
set incsearch		    " search as characters are entered
set hlsearch		    " highlight matches

" turn off search highlight
nnoremap <ESC><ESC> :nohlsearch<CR>

""" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on marker level

" space open/closes folds
nnoremap <space> za

""" Movement

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk


""" TMUX Stuff
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"""Remap list buffers to F5
:nnoremap <F5> :buffers<CR>:buffer<Space>

""" Map leader key 
:let mapleader = ","

""" Shortcut to reload vimrc
map <leader>s :source ~/.vimrc<CR>

""" Re-open previously opened file
nnoremap <Leader><Leader> :e#<CR>

""" Add some useful commands
map <C-n> :NERDTreeToggle<CR>

""" add to system clipboard
set clipboard=unnamed

""" add support
autocmd FileType apache setlocal commentstring=#\ %s

