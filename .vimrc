call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'joshdick/onedark.vim'
Plug 'matze/vim-move'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/jsonc.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"Custom Config
set encoding=utf-8
set fileencoding=utf-8
set number
set mouse=a
syntax on
set splitright
set splitbelow
set backupcopy=yes


" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"used for autocomplete when adding dash
set iskeyword+=\-

"joshdick/onedark.vim
colorscheme onedark
hi Comment guifg=#808080

" set color split line
set fillchars=vert:┃ " for vsplits
set fillchars+=fold:· " for folds
hi VertSplit guifg=#F08080
" Directory color
hi Directory guifg=#F08080

"scrooloose/nerdtree
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" open close icon
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''


"jistr/vim-nerdtree-tabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>

"fzf
nmap <c-p> :FZF<CR>

"matze/vim-move
let g:move_key_modifier = 'S'

"alvan/vim-closetag

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,jsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


"vim-airline/vim-airline-themes
let g:airline_theme='fruit_punch'

"ryanoasis/vim-devicons

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''

"vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = "\ue0c4"
let g:airline_left_alt_sep = ''
let g:airline_right_sep = "\ue0c5"
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = 'שׂ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

"neoclide/coc.nvim

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"w0rp/ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'typescript': ['prettier'],
\   'typescript.tsx': ['prettier'],
\   'python': ['yapf'],
\   'json': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier', 'stylelint'],
\   'scss': ['prettier', 'stylelint'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'typescript': ['eslint'],
\   'typescript.tsx': ['eslint'],
\   'python': ['flake8'],
\   'json': ['jsonlint'],
\   'html': ['htmlhint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\}
let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_list_window_size = 5
" autoclose loclist when close buffer
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

"scrooloose/nerdcommenter

let NERDDefaultAlign="left"

" mhinz/vim-startify

let g:startify_custom_header=[
      \ ' *********************************************************************///((((##((((((((////////****, ',
      \ ' *****.,,,..***********************************************************///(((((((((((//////////***** ',
      \ ' ******.,,,,.%%./////**************************************************/////(((((//////////////***** ',
      \ ' *****...,,,.%%%%%%.///**************************************************///////////////////////**** ',
      \ ' ********.,,.%%%%%%%%%/.************************************************************************..,, ',
      \ ' ****/////*,.%%%%%%%%%%%%%.*********************************************,,,,,,,,,,,,,,,,,,.*%%%%%.,, ',
      \ ' ***////////,%%%%%%%%%%%%%%%%.******************************************,,,,,,,,,,,,,.#%%%%%%%%%%.,, ',
      \ ' ***/////////.%%%%%%%%%%%%%%%%%%.****************************************,,,,,,,.,%%%%%%%%%%%%%%%,,, ',
      \ ' **//////////*.%%%%%%%%%%%%%%%%%%%%**************************************,,,.%%%%%%%%%%%%%%%%%%%.,., ',
      \ ' */////////****.%%%%%%%%%%%%%%%%%%%%%.**********************************.%%%%%%%%%%%%%%%%%%%%%%%,.,, ',
      \ ' */////////*****.%%%%%%%%%%%%%%%%%%%%%%,*************,........,*****.%%%%%%%%%%%%%%%%%%%%%%%%%%.,,,, ',
      \ ' /////////*****,,,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.,,,,, ',
      \ ' /////////****,,,,,.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%,*,,,,, ',
      \ ' *************,,,,,,,(%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.*******, ',
      \ ' *********,,,,,,,,,,,,,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//////***** ',
      \ ' ,,,,,,,,,,,,,,,,,,,,,,,,#%%.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.////////**** ',
      \ ' ,,,,,,,,,,,,,,,,,,,,,,,,,.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.%%%%./////////***** ',
      \ ' ,,,,,,,,,,,,,,,,,,,,,,,,,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%,***////////****** ',
      \ ' ,,,,...,,,,,,,,,,,,,,,,,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.***************, ',
      \ ' .........,,,,,,,,,,,,,,(%%%%%%%%%%*%,,.%%%%%%%%%%%%%%%%%%%%%%%%%*%,,.%%%%%%%%%%%%%%.**************, ',
      \ ' .........,,,,,,,,,,***.%%%%%%%%%%,&@%,,.%%%%%%%%%%%%%%%%%%%%%%%,&@%,,.%%%%%%%%%%%%%%*************,, ',
      \ ' ..........,,,,,,,,***,%%%%%%%%%%%.,,,,,.%%%%%%%%%%%%%%%%%%%%%%%.,,,,,.%%%%%%%%%%%%%%.**********,,,, ',
      \ ' ..........,,,,,,,,***#%%%%%%%%%%%%.,,,.%%%%%%%%%%%%%%%%%%%%%%%%%.,,,.%%%%%%%%%%%%%%%%,,,,,,,,,,,,,, ',
      \ ' ...........,,,,,,,**.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.,,,,,,,,,,,,, ',
      \ ' ..........,,,,,,,***%%%%%%%%%%%%%%%%%%%%%%%%%%%.,,,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.,,,,,,,,,,,, ',
      \ ' .........,,,,,,,***.%%%//////(%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(///////%%%%%%%#,,,,,,,,,,,, ',
      \ ' ,,,,,,,,,,,,,,*****,%//////////%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//////////(%%%%%%.********,,, ',
      \ ' ,,,,,,,,,**********%%//////////%%%%%%%%%%%%%%%%%%%###%%%%%%%%%%%%%%%%////////////%%%%%%%**********, ',
      \ ' *******************%%%////////%%%%%%%%%%%%%%%(,#########*%%%%%%%%%%%%%//////////%%%%%%%%.*********, ',
      \ ' ***********////////*%%%%%%%%%%%%%%%%%%%%%%%%%,##########,%%%%%%%%%%%%%%%//////%%%%%%%%%%#///******* ',
      \ ' ///////////////////*%%%%%%%%%%%%%%%%%%%%%%%%%,##########(%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.////***** ',
      \ ' ////////////////////.%%%%%%%%%%%%%%%%%%%%%%%%%,/########,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%,/////**** ',
      \ ' /////////////////////.%%%%%%%%%%%%%%%%%%%%%%%%%%%%,,,,%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/////**** ',
      \ ' /////////////////////*.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.///***** ',
      \ ' ////////////////////***.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(//*****, ',
      \ ' **////////////////******.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*******, ',
      \ ' ************************.%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.*****,, ',
      \ ' ************************(%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.****,,, ',
      \ ]

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
hi StartifyHeader guifg=#FFD700
