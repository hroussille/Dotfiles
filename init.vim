" Setup dein  ---------------------------------------------------------------{{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

  set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
  call dein#begin(expand('~/.config/nvim'))
  call dein#add('Shougo/dein.vim')
	call dein#add('ctrlpvim/ctrlp.vim')

  " syntax
  call dein#add('sheerun/vim-polyglot')
  call dein#add('othree/yajs.vim', {'on_ft': 'javascript'})
  call dein#add('othree/jsdoc-syntax.vim', {'on_ft':['javascript', 'typescript']})
  call dein#add('othree/es.next.syntax.vim', {'on_ft': 'javascript'})
  call dein#add('moll/vim-node')
  call dein#add('othree/javascript-libraries-syntax.vim')
  call dein#add('hail2u/vim-css3-syntax', {'on_ft':['css','scss']})
  let g:airline_powerline_fonts = 1
  call dein#add('elzr/vim-json', {'on_ft': 'json'})
  call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  call dein#add('jtratner/vim-flavored-markdown', {'on_ft': 'markdown'})
  call dein#add('dhruvasagar/vim-table-mode')
  call dein#add('suan/vim-instant-markdown', {'on_ft': 'markdown'})
  call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('octol/vim-cpp-enhanced-highlight')
  call dein#add('Shougo/denite.nvim')

  set conceallevel=0
  call dein#add('mhartington/vim-folds')
  call dein#add('Yggdroot/indentLine')
  call dein#add('itmammoth/doorboy.vim')
  call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb')
  call dein#add('jreybert/vimagit')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-repeat')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('tmux-plugins/vim-tmux-focus-events')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('mattn/emmet-vim', {'on_ft': 'html'})
  call dein#add('Chiel92/vim-autoformat')
  call dein#add('ap/vim-css-color')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-easymotion.vim')
  call dein#add('haya14busa/incsearch-fuzzy.vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('neomake/neomake')

" deoplete stuff
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('carlitux/deoplete-ternjs')
  call dein#add('Shougo/neco-vim', {'on_ft': 'vim'})
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Konfekt/FastFold')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  call dein#add('matthewsimo/angular-vim-snippets')
  call dein#add('magarcia/vim-angular2-snippets')
  call dein#add('heavenshell/vim-jsdoc')
  call dein#add('tpope/vim-surround')
  call dein#add('mhinz/vim-sayonara')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('itchyny/vim-cursorword')
  call dein#add('rhysd/nyaovim-popup-tooltip')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('NLKNguyen/papercolor-theme')
  call dein#add('joshdick/onedark.vim')
  call dein#add('godlygeek/csapprox')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('MaxSt/FlatColor')

  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()
  filetype plugin indent on
" }}}

" System Settings  ----------------------------------------------------------{{{

" source ~/.local.vim
" Neovim Settings
 
  set undodir=~/.config/nvim/undodir
  set undofile 
  
  set clipboard+=unnamedplus

  set number
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set relativenumber
" Currently needed for neovim paste issue
  set pastetoggle=<f2>
  set nopaste
" Let airline tell me my status
  set noshowmode
  set nobackup
  set noswapfile
  filetype on
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
" block select not limited by shortest line
  set virtualedit=
  set wildmenu
  set laststatus=2
  "set colorcolumn=100
  set wrap linebreak nolist
  set wildmode=full
" leader is, 
  let mapleader = ','
  set title
" Remember cursor position between vim sessions
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif

  " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  let g:jsx_ext_required =1
  set complete=.,w,b,u,t,k
  let g:gitgutter_max_signs = 1000  " default value
  let g:indentLine_char='│'

  " increase performances on indentLine
  let g:indentLine_faster=1

  " enable deoplete
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_ignore_case = 1
  let g:go_fmt_command = "goimports"
  let g:table_mode_corner="|"
  let g:dein#install_progress_type = 'none'

  " Auto chdir to current buffer
  " autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! cd %:h | endif
  set autochdir

" }}}

" System mappings  ----------------------------------------------------------{{{

" Navigate between display lines
  noremap  <silent> k gk
  noremap  <silent> j gj
" Neovim terminal mapping
" terminal 'normal mode'
  tmap <esc> <c-\><c-n><esc><cr>
" ,f to format code, requires formatters: read the docs
  noremap <c-f> :Autoformat<CR>
  noremap <leader>TM :TableModeToggle<CR>
  noremap J 5j
  noremap K 5k

  nnoremap ; :

  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'

  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>gc :Gcommit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>
  nnoremap <silent> <leader>gl :Glog<CR>
  nnoremap <silent> <leader>gp :Git push<CR>
  nnoremap <silent> <leader>gr :Gread<CR>
  nnoremap <silent> <leader>gw :Gwrite<CR>
  nnoremap <silent> <leader>ge :Gedit<CR>
 
  " Navigate between buffers
  nmap <leader>; :bnext<CR>
  nmap <leader>l :bprevious<CR>
  nmap <leader>d :Sayonara!<CR>
  nmap <Tab> :bnext<CR>
  nmap <S-Tab> :bprevious<CR>

  " Disable arrow keys in normal mode
  nnoremap <up> <nop>
  nnoremap <down> <nop>
  nnoremap <left> <nop>
  nnoremap <right> <nop>

  " Disable arrow keys in insert mode
  inoremap <up> <nop>
  inoremap <down> <nop>
  inoremap <left> <nop>
  inoremap <right> <nop>

  " Leave insert mode (like <esc>) and disable <esc>
  inoremap jk <esc>
  inoremap <special> <esc> <nop>
  inoremap <esc>^[ <esc>^[

  " <Leader>f{char} to move to {char}
  map  f <Plug>(easymotion-bd-f)
  nmap f <Plug>(easymotion-overwin-f)
  " s{char}{char} to move to {char}{char}
  " nmap s <Plug>(easymotion-overwin-f2)
  " Move to line
  map <Leader>L <Plug>(easymotion-bd-jk)
  nmap <Leader>L <Plug>(easymotion-overwin-line)
  " Move to word
  map  <Leader>w <Plug>(easymotion-bd-w)
  nmap <Leader>w <Plug>(easymotion-overwin-w)
  let g:EasyMotion_smartcase = 1
  " You can use other keymappings like <C-l> instead of <CR> if you want to
  " use these mappings as default search and somtimes want to move cursor with
  " EasyMotion.
  function! s:incsearch_config(...) abort
    return incsearch#util#deepextend(deepcopy({
    \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
    \   'keymap': {
    \     "\<CR>": '<Over>(easymotion)'
    \   },
    \   'is_expr': 0
    \ }), get(a:, 1, {}))
  endfunction

  noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
  noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
  noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

  function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
    \   'converters': [incsearch#config#fuzzyword#converter()],
    \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
    \   'keymap': {"\<CR>": '<Over>(easymotion)'},
    \   'is_expr': 0,
    \   'is_stay': 1
    \ }), get(a:, 1, {}))
  endfunction

  noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  vnoremap <c-/> :TComment<cr>
  map <esc> :noh<cr>

  nnoremap <leader>e :call <SID>SynStack()<CR>
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

  function! s:PlaceholderImgTag(size)
    let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
    let [width,height] = split(a:size, 'x')
    execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
    endfunction
  command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)
  nmap <silent>gi <Plug>(nyaovim-popup-tooltip-open)
  vmap <silent>gi <Plug>(nyaovim-popup-tooltip-open)

  " If you prefer the Omni-Completion tip window to close when a selection is
  " made, these lines close it on movement in insert mode or when leaving
  " insert mode
  autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
  autocmd InsertLeave * if pumvisible() == 0|pclose|endif

  " noremap <silent> - :VimFiler<cr>

"}}}"

" ThemesCommands, etc  ----------------------------------------------------{{{
" Theme
  syntax enable 
  set background=dark
  let g:flatcolor_terminal_italics = 1
  colorscheme flatcolor 
  " no need to fold things in markdown all the time
  let g:vim_markdown_folding_disabled = 1
  " disable markdown auto-preview. Gets annoying
  let g:instant_markdown_autostart = 0
  " Keep my termo window open when I navigate away
  autocmd TermOpen * set bufhidden=hide

  hi Folded guibg=#3c3c3c guifg=#aaaaaa
  hi LineNr guibg=#3c3c3c guifg=#91ddff
  hi Directory guifg=#91ddff

"}}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)

      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
      return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  autocmd FileType vim setlocal fdc=1
  set foldlevel=99
  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType html setlocal fdl=99

  autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99
  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  autocmd FileType javascript,typescript,json setl foldmethod=syntax
" }}}

" NERDTree ------------------------------------------------------------------{{{

" vimfiler
  set fillchars=vert:│,fold:─
  let g:vimfiler_tree_leaf_icon = ""
  let g:vimfiler_tree_opened_icon = "▼"
  let g:vimfiler_tree_closed_icon = "▷"
  
  map <c-e> :NERDTreeToggle<cr>
  autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  let NERDTreeShowHidden=1
  let NETDTreeQuitOnOpen=0
  let g:NERDTreeWinSize=35
  let g:NERDTreeAutoDeleteBuffer=1
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  let g:NERDTreeChDirMode = 2
  
  " let g:NERDTreeFileExtensionHighlightFullName = 1
  "
  " NERDTress File highlighting
  " function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  " exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  " exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  " endfunction
  "
  " call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'none')
  " call NERDTreeHighlightFile('md', 'blue', 'none', '#6699CC', 'none')
  " call NERDTreeHighlightFile('config', 'yellow', 'none', '#d8a235', 'none')
  " call NERDTreeHighlightFile('conf', 'yellow', 'none', '#d8a235', 'none')
  " call NERDTreeHighlightFile('json', 'green', 'none', '#d8a235', 'none')
  " call NERDTreeHighlightFile('html', 'yellow', 'none', '#d8a235', 'none')
  " call NERDTreeHighlightFile('css', 'cyan', 'none', '#5486C0', 'none')
  " call NERDTreeHighlightFile('scss', 'cyan', 'none', '#5486C0', 'none')
  " call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'none')
  " call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', 'none')
  " call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', 'none')
  " call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', 'none')
  " call NERDTreeHighlightFile('gitconfig', 'black', 'none', '#686868', 'none')
  " call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#7F7F7F', 'none')
"}}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  let g:neosnippet#expand_word_boundary = 1
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/repos/github.com/Shougo/neosnippet-snippets/neosnippets, ~/Github/ionic-snippets, ~/.config/repos/github.com/matthewsimo/angular-vim-snippets/snippets'

" SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

"}}}

" Typescript & Javscript omni complete --------------------------------------{{{

  let g:vim_json_syntax_conceal = 0
  set splitbelow
  set completeopt+=noselect
  autocmd FileType typescript setlocal completeopt+=menu,preview
	" set completeopt-=menu,preview
  autocmd FileType vmailMessageList let b:deoplete_disable_auto_complete=1
  function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete=1
  endfunction
  function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete=0
  endfunction
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.html = ''

"}}}

" Emmet customization -------------------------------------------------------{{{
" Enable Emmet in all modes
" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return "\<C-y>,"
  endif
" return a regular tab character
  return "\<tab>"
  endfunction

  autocmd FileType html,markdown imap <buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 0
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
"}}}

" CTRLP ---------------------------------------------------------------------{{{
  
  let g:ctrlp_match_window = 'bottom,order:btt'
  let g:ctrlo_switch_buffer = 0
  let g:ctrlp_working_path_mode = 0
  if exists("g:ctrlp_user_command")
    unlet g:ctrlp_user_command
  endif
  set wildignore+=*\\node_modules\\**
  if executable("ag")
      set grepprg=ag\ --nogroup\ --nocolor
      let g:ctrlp_user_command = 'ag %s -l --ignore-dir=node_modules --hidden -g ""'
  endif

  let g:ctrlp_show_hidden = 1

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/.git/*
  let g:ctrlp_show_hidden = 1

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/.git/

"}}}

" Navigate between vim buffers and tmux panels ------------------------------{{{
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l

"}}}

" vim-airline ---------------------------------------------------------------{{{
  
  " autocmd VimEnter * AirlineTheme oceanicnext 
  let g:airline#extensions#tabline#enabled = 1
  set hidden
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#show_tab_nr = 1
  let g:airline_powerline_fonts = 1
  let g:airline_theme='papercolor'
  cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
"}}}


" Linters  ---------------------------------------------------------------{{{

autocmd! BufWritePost,BufEnter * Neomake

" Configure Neomake Error and Warning sign color
" Error is red :
hi NeomakeErrorSign guifg=#FF0000
" Warning is yellow :
hi NeomakeWarningSign guifg=#FFFF00

"}}}
