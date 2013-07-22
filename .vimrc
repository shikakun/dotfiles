" Setup
  set nocompatible "vi非互換モード

  " Vundle
    filetype off " for vundle
    set rtp+=~/.vim/vundle.git/
    call vundle#rc()
    Bundle 'gmarik/vundle'

    " Utilities
      Bundle 'honza/snipmate-snippets'
      Bundle 'mattn/gist-vim'
      Bundle 'mattn/webapi-vim'
      Bundle 'mileszs/ack.vim'
      Bundle 'nathanaelkane/vim-indent-guides'
      Bundle 'othree/eregex.vim'
      Bundle 'thinca/vim-quickrun'
      Bundle 'tomtom/tcomment_vim'
      Bundle 'tpope/vim-endwise'
      Bundle 'tpope/vim-fugitive'
      Bundle 'tpope/vim-rails'
      Bundle 'tyru/open-browser.vim'
      Bundle 'ujihisa/unite-colorscheme'
      Bundle 'Align'
      Bundle 'sudo.vim'
      Bundle 'vim-addon-mw-utils'
      Bundle 'tlib'
      Bundle 'Lokaltog/vim-powerline'
      Bundle 'vim-ruby/vim-ruby'
      Bundle 'ujihisa/neco-look'
      Bundle 'thinca/vim-ref'

    " Syntaxes
      Bundle 'csexton/jekyll.vim'
      Bundle 'tpope/vim-markdown'
      Bundle 'leshill/vim-json'
      Bundle 'taskpaper.vim'
      Bundle 'kchmck/vim-coffee-script'
      Bundle 'othree/html5.vim'
      Bundle 'pangloss/vim-javascript'

    " Colorschemes
      Bundle 'tomasr/molokai'
      Bundle 'altercation/vim-colors-solarized'
      Bundle 'railscasts'
      Bundle 'github-theme'

  " General Config
    filetype plugin indent on
    syntax on "カラー表示

    set encoding=utf-8
    set fileencodings=utf-8,utf-16le,latin1,iso-2022-jp,euc-jp,sjis,cp932
    set nowritebackup
    set nobackup

    " プログラミングヘルプ系
    set smartindent "オートインデント
    set clipboard+=autoselect

    " tab関連
    set expandtab "タブの代わりに空白文字挿入
    set ts=2 sw=2 sts=0 "タブは半角2文字分のスペース

    " 検索系
    set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
    set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
    set wrapscan "検索時に最後まで行ったら最初に戻る
    set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
    set hlsearch "検索結果をハイライト表示
    set backspace=indent,eol,start " 普通にバックスペースで削除できるようにする
    set number "行番号表示
    set showmode "モード表示
    set hidden "保存せずに buffer を移動する
    set title "編集中のファイル名を表示
    set ruler "ルーラーの表示
    set showcmd "入力中のコマンドをステータスに表示する
    set showmatch "括弧入力時の対応する括弧を表示
    set laststatus=2 "ステータスラインを常に表示
    set splitbelow "新しいウィンドウを下に開く
    set splitright "新しいウィンドウを右に開く
    set t_Co=256 " 256 color
    set wildmenu
    set wildmode=longest,list "コマンド候補補完
    set history=1000 "コマンド履歴保存件数
    set cursorline " カーソル行をハイライト表示

    " Colorscheme settings
      " molokai
        set background=dark
        let g:molokai_original = 1
        colorscheme molokai

    " ファイルを開いた際に、前回終了時の行で起動
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

    " 行末の空白を強調表示
    " http://d.hatena.ne.jp/kasahi/20070902/1188744907
    " colorscheme の設定よりも後に持ってこないといけない
    highlight WhitespaceEOL ctermbg=red guibg=red
    match WhitespaceEOL /\s\+$/
    autocmd WinEnter * match WhitespaceEOL /\s\+$/

    " 横幅長い行対策
    " http://vim-users.jp/2011/05/hack217/
    set textwidth=0
    if exists('&colorcolumn')
      set colorcolumn=+1
      autocmd FileType sh,cpp,perl,vim,ruby,haml,eruby.html,html,css,python,haskell,scheme,javascript setlocal textwidth=80
    endif

    " コメントアウト行を改行したときにコメントアウトされるのをやめる
    " http://d.hatena.ne.jp/yuichi_katahira/20090117/1232209418
    autocmd FileType * setlocal formatoptions-=ro

  " Keybingings
    " ESCキー2度押しでハイライトを消す
    nnoremap <Esc><Esc> :<C-u>nohl<Return><Esc>

    " カーソル移動を見た目のやつに
    nnoremap j gj
    nnoremap k gk
    vnoremap j gj
    vnoremap k gk

    " bindings for easy split nav
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " Space to toggle folds.
    nnoremap <Space> za
    vnoremap <Space> za

  " Syntax Settings
    " shebang template
    autocmd BufNewFile *.rb 0r ~/.vim/templates/skel.rb

    " ファイルタイプ別の設定
    autocmd FileType nginx,apache,conf setlocal sw=4 sts=4 ts=4 noet

  " Plugin Settings
    " Neocomplcache
      let g:neocomplcache_enable_at_startup            = 1
      let g:neocomplcache_enable_smart_case            = 1 " Use smartcase.
      let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion.
      let g:neocomplcache_enable_underbar_completion   = 1 " Use underbar completion.
      let g:neocomplcache_min_syntax_length            = 3 " Set minimum syntax keyword length.
      let g:neocomplcache_lock_buffer_name_pattern     = '\*ku\*'
      let g:neocomplcache_text_mode_filetypes = {'text': 1, 'javascript': 1, 'markdown': 1, 'perl': 1, 'html': 1, 'ruby': 1}

      " Enable omni completion.
      autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
      autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
      autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
      autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
      autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
      if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
      endif
      let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

      " RSense
      let g:rsenseUseOmniFunc = 1
      if filereadable(expand('/usr/local/bin/rsense'))
        let g:rsenseHome = expand('/usr/local/Cellar/rsense/0.3/libexec')

      endif

    " Neosnippet
      " Plugin key-mappings.
      imap <C-k>     <Plug>(neosnippet_expand_or_jump)
      smap <C-k>     <Plug>(neosnippet_expand_or_jump)
      " SuperTab like snippets behavior.
      imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
      smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
      " For snippet_complete marker.
      if has('conceal')
        set conceallevel=2 concealcursor=i
      endif
      " Tell Neosnippet about the other snippets
      let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'

    " Vimfiler
      let g:vimfiler_as_default_explorer = 1
      let g:vimfiler_safe_mode_by_default = 0
      nnoremap <silent> ,vf :<C-u>VimFilerBufferDir<CR>

    " Align
      let g:Align_xstrlen=3

    " Unite.vim
      let g:unite_enable_start_insert=1
      " バッファ一覧
      nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
      " ファイル一覧
      nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file file/new<CR>
      " レジスタ一覧
      nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
      " 最近使用したファイル一覧
      nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
      " 常用セット
      nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
      " 全部乗せ
      nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file file/new<CR>
      " 新規ファイル
      nnoremap <silent> ,un :<C-u>UniteWithBufferDir -buffer-name=files file/new<CR>
      " colorscheme
      nnoremap <silent> ,uc :<C-u>Unite colorscheme<CR>
      " git confilicts
      " http://aereal.hateblo.jp/entry/2012/07/28/032951
      nnoremap <silent> ,gc :<C-u>UniteWithCurrentDir git/conflicts -buffer-name=files<CR>

      " vimfiler で grep したとき見やすくするやつ
        let g:unite_source_grep_default_opts = '-Hn --color=never'
        if executable('ack-grep')
          let g:unite_source_grep_command = 'ack-grep'
          let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
        endif

    " Quickrun
      let g:quickrun_config = {}
      " quickrun rspec
      let g:quickrun_config['ruby.rspec'] = {'command': 'rspec'}
      augroup UjihisaRSpec
        autocmd!
        autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
      augroup END
      " preview markdown with browser
      let g:quickrun_config['markdown'] = {
            \ 'outputter': 'browser'
            \}

    " Jekyll
      let g:jekyll_path = "~/Projects/tech.portalshit.net"
      map <Leader>jb :JekyllBuild<CR>
      map <Leader>jn :JekyllPost<CR>
      map <Leader>jl :JekyllList<CR>

    " Indent Guides
      let g:indent_guides_start_level = 2
      let g:indent_guides_guide_size  = 1
      let g:indent_guides_auto_colors = 0
      autocmd VimEnter,ColorScheme * hi IndentGuidesOdd  ctermbg=235
      autocmd VimEnter,ColorScheme * hi IndentGuidesEven ctermbg=236

    " web-ref
      let g:ref_source_webdict_sites = {
            \   'e': {
            \     'url': 'http://eow.alc.co.jp/%s/UTF-8/?ref=s',
            \   }
            \ }
      let g:ref_source_webdict_sites.default = 'e'

      function! g:ref_source_webdict_sites.e.filter(output)
        return join(split(a:output, "\n")[41 :], "\n")
      endfunction

      nmap ,re :<C-u>Ref webdict e<Space>

