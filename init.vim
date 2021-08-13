set number
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set mouse=a 
set clipboard=unnamedplus
set numberwidth=1
syntax enable
set showcmd  
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
let mapleader=" " 
set bs=indent,eol,start
call plug#begin('~/.vim/plugged')

if has('nvim')
  "revision de codigo
  "Plug 'dense-analysis/ale'

  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" React code snippets and react native
Plug 'maxmellon/vim-jsx-pretty'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'epilande/vim-react-snippets'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'tellijo/vim-react-native-snippets'
" ES2015 code snippets  and Javascript,TYpescript plugins
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'epilande/vim-es2015-snippets'
Plug 'SirVer/ultisnips'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
"css, scss ,html ,ejs,etc.
Plug 'nikvdp/ejs-syntax'
Plug 'mlaursen/coc-scssmodules', {'do': 'yarn install && yarn build'}
Plug 'ap/vim-css-color'
"barras de estdo
Plug 'itchyny/lightline.vim'
Plug 'oldwomanjosiah/lightline-gruvbox.vim'
"coloreo y pretier
Plug 'sheerun/vim-polyglot'
"Git
"Plug 'Yggdroot/indentLine'
Plug 'tsony-tsonev/nerdtree-git-plugin'  
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
"Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"themas
Plug 'morhetz/gruvbox' 
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
"latex
Plug 'lervag/vimtex'
"otros
Plug 'kristijanhusak/defx-icons'
Plug 'psliwka/vim-smoothie'
Plug 'scrooloose/nerdtree' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "coloreo de nedtree
Plug 'ryanoasis/vim-devicons' " Icons 


Plug 'ctrlpvim/ctrlp.vim' 
Plug 'scrooloose/nerdcommenter' 
Plug 'terryma/vim-smooth-scroll' "scroll 
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify' "pantalla de inicio de vim
"C#
Plug 'OmniSharp/omnisharp-vim'
Plug 'preservim/nerdtree'

call plug#end()
"one dark pro
"syntax on
"Kite config
let g:kite_supported_languages = ['python','javascript','c#']
"coc config 
autocmd FileType python let b:coc_suggets_disable = 1
autocmd FileType javascript let b:coc_suggets_disable = 1
autocmd FileType scss setl iskeyword+=@-@
"coc & kite
    if &filetype == "javascript" || &filetype == "python"
        inoremap <c-space> <C-x><C-u>
    else
        inoremap <silent><expr> <c-space> coc#refresh()
    endif


"format code
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up&(scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"Cambio de sintaxis
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
"Config theme
let g:jsx_ext_required=0
let g:gruvox_termcolors=16
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1
let g:lightline = { 'colorscheme': 'gruvbox'}
   set background=dark
   colorscheme gruvbox
"syntax on
" Ayu theme
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu


" Change icons for Git 
let g:signify_sign_add ='●'
let g:signify_sign_delete= '↛'
let g:signify_sign_delete_first_line = '@'
let g:signify_sign_change = '↛'  


"Nerdtree
let NERDTreeQuitOnOpen =1
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :noa w <CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeIgnore = ['^node_modules$']


nmap <Leader>s <PLug>(easymotion-s2)


" vim-prettier
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
set relativenumber
set smarttab
set tabstop=2     
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
" coc config
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-eslint', 
\ 'coc-prettier', 
\ 'coc-json', 
\ ]
" if hidden is not set, TextEdit might fail.
set hidden "Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=50
set shortmess+=c
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for goto
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
augroup mygroup
autocmd!
augroup end
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)
hi Normal guibg=NONE ctermbg=NONE
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:javascript_plugin_flow = 1
hi jsxAttrib ctermfg=214
hi jsxComponentName   ctermfg=108
let g:jsx_ext_required = 1
"let g:polyglot_disabled = ['jsx']
"hi link jsxCloseString htmlTag
let g:mta_filetypes = {
    \ 'xhtml' : 1,
     \'javascriptreact' :1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
     \'javascript':1,
    \ 'javascript.jsx': 1,
    \}


"resaltado de  javascript simbolos
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"
"latex config
"cabbrev W w !pdflatex %

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}


"simbolos ✿   ◉ ✮ °
"➜  ➽  ➱ 	➱   ● ●
"c# 
"
