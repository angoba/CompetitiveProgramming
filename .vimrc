"General editor settings
set tabstop=4
set nocompatible
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set ruler
set showcmd
set incsearch
set shellslash
set number
set mouse=a
set relativenumber
set cino+=L0

syntax on
filetype off
setlocal indentkeys-=:

call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-dispatch'
Plug 'vim-scripts/errormarker.vim'
Plug 'leviosa42/vim-github-theme'
Plug 'joshdick/onedark.vim'
Plug 'rose-pine/vim'
Plug 'preservim/nerdtree'

call plug#end()
filetype plugin indent on

"Theme
"let g:solarized_termcolors=256
set background=light
colorscheme solarized

"Keybindings for NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"keybindings for {ctrl-a to select all
inoremap {<CR> {<CR>}<Esc>O
inoremap {}	{}
map <C-a> <esc>ggVG<CR>
set belloff=all

"Append template to new c++ files
autocmd BufNewFile *.cpp 0r /home/ioannes/vimcp/Library/Template.cpp
autocmd BufNewFile *.java 0r /home/ioannes/vimcp/Library/Template.java

"Compile and run
set makeprg=g++\ -static\ -DDEBUG\ -lm\ -s\ -x\ c++\ -Wall\ -Wextra\ -O2\ -std=c++17\ -o\ %:r\ %
set makeprg=build.sh\ %:r
autocmd filetype cpp nnoremap <F5> :w <bar> Make <CR>
autocmd filetype cpp nnoremap <F6> :vertical terminal ++shell ++cols=60 ./%:r<CR>
autocmd filetype cpp nnoremap <F7> :!./%:r<CR>
autocmd filetype cpp nnoremap <F9> :vertical terminal ++shell ++cols=60 ./%:r < data1<CR>
autocmd filetype cpp nnoremap <F10> :vertical terminal ++shell ++cols=60 ./%:r < data2<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python nnoremap <buffer> <F6> :w<CR>:vertical terminal ++shell ++cols=60 python3 ./%<CR>

"LaTeX settings
autocmd FileType tex :NoMatchParen
autocmd FileType tex :set tw=110
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance@pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:tex_flavor = 'latex'
let g:vimtex_motion_matchparen = 0
let g:vimtex_fold_manual = 1
let g:vimtex_matchparen_enabled = 0

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

vnoremap <C-c> "+y
map <C-p> "+p
