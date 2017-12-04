" ==================================================================================================
" Plugin settings
" ==================================================================================================

if has_key(g:plugs, 'ale')
  let g:ale_sign_error = '>>'
  let g:ale_sign_warning = '--'
  let g:ale_linters = {
  \ 'css': ['stylelint'],
  \ 'javascript': ['eslint'],
  \ 'python': ['pylint', 'flake8']
  \}
  let g:ale_linter_aliases = {'jsx': 'css'}
  nmap <silent> [e <Plug>(ale_previous_wrap)
  nmap <silent> ]e <Plug>(ale_next_wrap)
endif

if has_key(g:plugs, 'ctrlp.vim')
  if executable('rg')
    " use rg in ctrlp for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

    " rg is fast enough that ctrlp doesn't need to cache
    let g:ctrlp_use_caching = 0
  endif

  let g:ctrlp_show_hidden = 1
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("h")': ['<c-s>'],
    \ 'AcceptSelection("v")': ['<c-v>'],
    \  }
endif

if has_key(g:plugs, 'editorconfig-vim')
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
endif

if has_key(g:plugs, 'matchtagalways')
  let g:mta_filetypes = {
    \ 'javascript.jsx': 1,
    \ 'html' : 1,
    \ 'xml' : 1,
    \ }
endif

if has_key(g:plugs, 'nerdtree')
  let NERDTreeMapActivateNode='l'
  let NERDTreeMapCloseDir='h'
  let NERDTreeMapOpenSplit='<c-s>'
  let NERDTreeMapOpenVSplit='<c-v>'
  let NERDTreeMinimalUI = 1
  let NERDTreeAutoDeleteBuffer = 1
  nnoremap <leader>n :NERDTreeToggle<CR>
endif

if has_key(g:plugs, 'vim-airline')
  let g:airline_powerline_fonts = 0
  let g:airline_left_sep=''
  let g:airline_left_alt_sep='|'
  let g:airline_right_sep=''
  let g:airline_right_alt_sep='|'
endif

if has_key(g:plugs, 'vim-closetag')
  let g:closetag_filenames = "*.html,*.jsx"
endif

if has_key(g:plugs, 'vim-easyclip')
  let g:EasyClipUseCutDefaults = 0
  nmap x <Plug>MoveMotionPlug
  xmap x <Plug>MoveMotionXPlug
  nmap xx <Plug>MoveMotionLinePlug
endif

if has_key(g:plugs, 'vim-easymotion')
  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_keys='qwertyuiopasdfghjklzxcvbnm'
  map <leader> <Plug>(easymotion-prefix)
endif

if has_key(g:plugs, 'vim-gitgutter')
  set signcolumn=yes
  let g:gitgutter_sign_added = '++'
  let g:gitgutter_sign_modified = '~~'
  let g:gitgutter_sign_removed = '__'
  let g:gitgutter_sign_removed_first_line = '¯¯'
  let g:gitgutter_sign_modified_removed = '~_'
endif

if has_key(g:plugs, 'vim-hardtime')
  let g:hardtime_default_on = 1
  let g:hardtime_ignore_quickfix = 1
  let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+"]
  let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+"]
  let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
endif

if has_key(g:plugs, 'vim-polyglot')
  let g:polyglot_disabled = ['css']
  let g:vim_markdown_conceal = 0
endif

if has_key(g:plugs, 'vim-tmux-navigator')
  nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
endif


if has_key(g:plugs, 'ultisnips')
  let g:UltiSnipsExpandTrigger="<c-y>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
endif

if has_key(g:plugs, 'deoplete-jedi')
    let g:deoplete#sources#jedi#python_path = $VIRTUAL_ENV
endif

if has_key(g:plugs, 'slimux')
  nnoremap <C-c><C-s> :SlimuxREPLSendLine<CR>
  vnoremap <C-c><C-s> :SlimuxREPLSendSelection<CR>
  nnoremap <C-c><C-v> :SlimuxREPLConfigure<CR>
endif

