"────────────────────────────────────────────────────────
colorscheme delek
:set number
:set laststatus=2
:set splitright
:set splitbelow
:set statusline+=%F
let var=expand('%:p') 
"────────────────────────────────────────────────────────
nnoremap s :w<CR><BS> 
nnoremap S :wq<CR>
nnoremap t :source ~/.vimrc<CR>

nnoremap <Enter> i<Home><CR><Esc>
nnoremap <Backspace> i<Home><BS><Esc>

nnoremap c yy
nnoremap x yydd

nnoremap q :NERDTree<CR>
nnoremap w :vert sb3<CR>
nnoremap r :tabnext<CR><BS>
nnoremap e :tabprevious<CR><BS>
nnoremap F :bd<CR><BS>
nnoremap n <Home>
nnoremap m <End>
"────────────────────────────────────────────────────────
:set modifiable
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"────────────────────────────────────────────────────────
Plugin 'VundleVim/Vundle.vim' 
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
call vundle#end()
filetype plugin indent on  
"────────────────────────────────────────────────────────
" Nerd tree config.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeWinPos = "right"

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['py'] = s:green " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule
"────────────────────────────────────────────────────────
" Lightline config.

if !has('gui_running')
  set t_Co=256
endif


let g:lightline = {
      \'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
"────────────────────────────────────────────────────────
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"────────────────────────────────────────────────────────
let g:livepreview_engine = 'pdflatex'
let g:tex_flavor = 'latex'
syntax on


