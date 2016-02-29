" Install plugins with https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'elixir-lang/vim-elixir'
Plug 'epmatsw/ag.vim'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neco-vim'
Plug 'tomtom/tcomment_vim'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'thinca/vim-ref'

call plug#end()


set number nowrap nohlsearch noswapfile

" Don't beep and don't flash. Bleh!
set visualbell

" My preferred default tab settings (makes tabs stand out)
set ts=4 sts=2 sw=2 expandtab

" Set windows up
set winwidth=85 colorcolumn=81 list listchars=tab:▸\ ,trail:•

" Set up my statusline
set statusline=%f%(\ %M%)%(\ %R%)%(\ %W%)%(\ %y%)%=%-14.(%l,%c%V%)\ %P
set wildmode=longest:full

" Colors
set background=dark
colorscheme solarized

" VERY MAGIC ALL THE TIME!
nnoremap /  /\v
cnoremap s/ s/\v

" When editing a line, put a $, instead of redisplaying.
set cpoptions+=$

" Toggle paste mode
set pastetoggle=<C-t>


let mapleader = ","

" Edit this file
nmap <silent> <leader>v :vsp $MYVIMRC<cr>

" Map tab and shift-tab to switch buffers.
nmap <silent> <tab> :bn<cr>
nmap <silent> <S-tab> :bp<cr>

" Map ctrl-n and ctrl-p to :cn and :cp respectively.
nmap <silent> <C-n> :cn<cr>
nmap <silent> <C-p> :cp<cr>


" Easier window nav
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Next buffer and close old one.
command! BD :bp<bar>:bd#


" Deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" UltiSnips settings
let g:UltiSnipsEditSplit = 'context'
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<shift-tab>"

" Neopairs settings
let g:neopairs#enable = 1

" Markdown support
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['ruby', 'sh', 'javascript', 'vim', 'python', 'go']

" NERDTree settings
nmap <silent> <leader>nt :NERDTreeToggle<cr>
let NERDTreeIgnore=['^Gemfile\.lock$', '\~$', '\.pyc$', '^_build$']

" CtrlP settings
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ }
nmap <silent> <leader>t :CtrlP<cr>
