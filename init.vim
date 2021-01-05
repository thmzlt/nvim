let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeIgnore = ['\.pyc$', '^__pycache__$']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeSortOrder = []
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \'*':               ['remove_trailing_lines', 'trim_whitespace'],
      \'cmake':           ['remove_trailing_lines', 'trim_whitespace', 'cmakeformat'],
      \'cpp':             ['remove_trailing_lines', 'trim_whitespace', 'clang-format'],
      \'css':             ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'elixir':          ['remove_trailing_lines', 'trim_whitespace', 'mix_format'],
      \'elm':             ['remove_trailing_lines', 'trim_whitespace', 'elm-format'],
      \'html':            ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'javascript':      ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'json':            ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'nix':             ['remove_trailing_lines', 'trim_whitespace', 'nixpkgs-fmt'],
      \'python':          ['remove_trailing_lines', 'trim_whitespace', 'isort', 'black'],
      \'ruby':            ['remove_trailing_lines', 'trim_whitespace', 'rubocop'],
      \'scss':            ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'terraform':       ['remove_trailing_lines', 'trim_whitespace', 'terraform'],
      \'typescript':      ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'typescript.tsx':  ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \'yaml':            ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
      \}
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'
let g:ftplugin_sql_omni_key = '<C-k>' " Disable stupid <C-c> behavior on SQL files
let g:lightline = {'colorscheme': 'seoul256'}
let g:pandoc#syntax#conceal#use = 0
let g:seoul256_background = 235

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/seoul256.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-eunuch'
Plug 'sickill/vim-pasta'
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme seoul256

filetype plugin indent on

let mapleader=","

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set cmdheight=1
set cursorline
set completeopt-=preview
set expandtab
set hidden
set hlsearch
set incsearch
set laststatus=2
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set mouse=a
set nobackup
set nofoldenable
set nonumber
set noswapfile
set nowrap
set nowritebackup
set regexpengine=1
set smartindent
set smarttab
set showmode
set shiftwidth=2
set softtabstop=2
set statusline=%f\ %m%=%y\ %l:%c
set tabstop=2
set updatetime=300
set wildignore+=*.beam,*/_build/*,*/.mypy-cache/*,*/node_modules/*,*/platforms/*,*/vendor/bundle/*,*__pycache__

set listchars=tab:>-,space:.,trail:~
set nolist

syntax on

inoremap <C-c> <esc>

nnoremap <A-,> :tabprev<cr>
nnoremap <A-.> :tabnext<cr>
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <C-[> <c-o>
nnoremap <C-]> <c-i>
nnoremap <leader>T :term<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>

"nnoremap <silent> <leader>ld  <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> <leader>le  <cmd>lua vim.lsp.buf.declaration()<CR>
"nnoremap <silent> <leader>lh  <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> <leader>li  <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap <silent> <leader>lr  <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <silent> <leader>ls  <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <leader>lo  <cmd>lua vim.lsp.buf.document_symbol()<CR>
"nnoremap <silent> <leader>lw  <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
"nnoremap <silent> <leader>lt  <cmd>lua vim.lsp.buf.type_definition()<CR>

nnoremap <leader>lc :clearjumps<cr>
nnoremap <leader>rc :CocRestart<cr><cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>c :close<cr>
nnoremap <leader>/ :noh<cr>
nnoremap <leader>p :set invpaste paste?<cr>
nnoremap <leader>w :write<cr>
nnoremap <leader>s :split<cr><C-w><C-w>
nnoremap <leader>v :vsplit<cr><C-w><C-w>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :FZF<cr>
nnoremap H ^
nnoremap L $

onoremap H ^
onoremap L $

tnoremap <A-,> <C-\><C-n>:tabprev<cr>
tnoremap <A-.> <C-\><C-n>:tabnext<cr>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
tnoremap <C-\> <C-\><C-n>

vnoremap H ^
vnoremap L $

augroup filetypes
  autocmd BufNewFile,BufRead *.adoc setf asciidoc
  autocmd BufNewFile,BufRead *.hob setf hobbes
  autocmd BufNewFile,BufRead *.json setf javascript
  autocmd BufNewFile,BufRead *.md.pandoc setf markdown.pandoc
  autocmd FileType markdown let g:indentLine_conceallevel = 0
  "autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
  autocmd FileType sql inoremap <C-c> <esc>
augroup END

"=== LSP Settings

"lua << EOF
"
"local on_attach_vim = function(client)
"  require'completion'.on_attach(client)
"  require'diagnostic'.on_attach(client)
"end
"
"require'lspconfig'.pyls.setup{
"  on_attach
"}
"
"EOF
