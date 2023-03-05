set nobackup
set number
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set hlsearch
set showcmd
set showmatch
set ignorecase

set tabstop=4
set shiftwidth=2
set softtabstop=4
set expandtab

set encoding=euc-jp
set fileencoding=euc-jp
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos,mac
syntax off

" 編集箇所のカーソルを記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif
" カーソル行にアンダーラインを引く
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

"<ESC>2回でハイライトを消す
nnoremap <ESC><ESC> :nohl<CR>

"折り畳み
set foldmethod=indent  "折りたたみ範囲の判断基準（デフォルト: manual）
"set foldmethod=expr
set foldlevel=1        "ファイルを開いたときにデフォルトで折りたたむレベル
"set foldcolumn=1       "左端に折りたたみ状態を表示する領域を追加する
