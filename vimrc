
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim" call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'scrooloose/nerdtree'
 Plugin 'bling/vim-airline'
 Plugin 'mattn/emmet-vim'
 Plugin 'vim-scripts/tComment'
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'honza/vim-snippets'
 Plugin 'Shougo/neocomplcache.vim'
 Plugin 'thinca/vim-quickrun'
 Plugin 'Shougo/neocomplete'
 Plugin 'Shougo/neosnippet'
 Plugin 'Shougo/neosnippet-snippets'
 Plugin 'scrooloose/syntastic'
 " " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
 Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"Colorscheme set up
syntax enable
set background=dark
colorscheme solarized

"Nerdtree set up
map <C-n> :NERDTreeToggle<CR>

imap df <esc>

set number

"Mulltiply cursors set up
let g:multi_cursor_next_key='<C-l>'

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

"Synstasic settings
let g:syntastic_enable_signs=1

let g:neocomplcache_enable_at_startup = 1
set mouse=a

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"maps
map <C-t> :tabnew <CR>
map <C-r> :QuickRun <CR>
map <C-e> :tabclose<CR>
"Emmet setUp
let g:user_emmet_expandabbr_key = '<TAB>'

"NeosnippetSetUp
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"Clang
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

set t_Co=256


