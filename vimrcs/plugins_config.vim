"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1

let g:NERDTreeMapJumpFirstChild=''
let g:NERDTreeMapJumpLastChild=''


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  vim-nerdtree-tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-e> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="luna"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
" let g:syntastic_go_checkers = []
let g:syntastic_go_go_build_args = "-o /dev/null"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap S :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neosnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map J <Plug>(easymotion-j)
map K <Plug>(easymotion-k)
map L <Plug>(easymotion-w)
map H <Plug>(easymotion-b)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => haskell-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => eagletmt/neco-ghc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-scripts/PDV--phpDocumentor-for-Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-s> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-s> :call PhpDocSingle()<CR> 
vnoremap <C-s> :call PhpDocRange()<CR> 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => auto-pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsMultilineClose=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => artur-shaik/vim-javacomplete2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType java set omnifunc=javacomplete#Complete
