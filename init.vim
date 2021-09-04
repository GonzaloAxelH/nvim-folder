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
"Plug 'Valloric/MatchTagAlways'
Plug 'tellijo/vim-react-native-snippets'
" ES2015 code snippets  and Javascript,TYpescript plugins
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'epilande/vim-es2015-snippets'
Plug 'SirVer/ultisnips'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
"ventanas emergentes
Plug 'ellisonleao/glow.nvim', {'do': ':GlowInstall', 'branch': 'main'}

"css, scss ,html ,ejs,etc.
Plug 'nikvdp/ejs-syntax'
Plug 'mlaursen/coc-scssmodules', {'do': 'yarn install && yarn build'}
Plug 'ap/vim-css-color'


"barras de estdo
"- - - - Plug 'itchyny/lightline.vim'
"- - - - Plug 'oldwomanjosiah/lightline-gruvbox.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"coloreo y pretier
Plug 'sheerun/vim-polyglot'
Plug 'chemzqm/vim-jsx-improve'
"Git
Plug 'Yggdroot/indentLine'
Plug 'tsony-tsonev/nerdtree-git-plugin'  
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
"Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"themas
"Plug 'vim-scripts/gruvbox'
Plug 'morhetz/gruvbox' 
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
let g:airline_theme='gruvbox'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

"git config
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
"Kite config
let g:kite_supported_languages = ['python','javascript']
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
" Change icons for Git 
let g:signify_sign_add ='+'
let g:signify_sign_delete= '●'
let g:signify_sign_change = '→'


let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
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
let g:jsx_ext_required = 1
"colors jsx
hi jsxAttrib  ctermfg=214
hi jsxComponentName ctermfg=142 cterm=bold
hi jsxTagName ctermfg=142 cterm=bold
hi javascriptImport ctermfg=214
hi javascriptExport ctermfg=214
hi javaScriptNumber ctermfg=108
"colors coc.hi
hi CocUnusedHighlight ctermfg=244

"colors nerdtree
let g:mta_filetypes = {
    \ 'xhtml' : 1,
     \'javascriptreact' :1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
     \'javascript':1,
    \ 'javascript.jsx': 1,
    \}

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
"terminal integrated config
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-x>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-x> :call OpenTerminal()<CR>




let g:airline_powerline_fonts = 1                                                                                                         
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 
                                                                                                                                          
"TABLINE:                                                                                                                                 
                                                                                                                                          
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline







