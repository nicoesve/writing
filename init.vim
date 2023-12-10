call plug#begin('~/data/plugged')

Plug 'tpope/vim-sensible'
Plug 'github/copilot.vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'jpalardy/vim-slime'
Plug 'honza/vim-snippets'
call plug#end()

" General settings
filetype plugin indent on
syntax enable
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Vimtex settings
let g:vimtex_view_method = 'less'
let g:vimtex_compiler_method = 'latexrun'
let maplocalleader = ","
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0

" UltiSnips settings
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

" Tex-Conceal settings
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

