set number
set title

" ファイルを上書きする前にバックアップを作ることを無効化
set nowritebackup
" ファイルを上書きする前にバックアップを作ることを無効化
set nobackup
" vim の矩形選択で文字が無くても右へ進める
set virtualedit=block
" 全角文字専用の設定
set ambiwidth=double
" wildmenuオプションを有効(vimバーからファイルを選択できる)
set wildmenu
" yでコピーした時にクリップボードに入る
set guioptions+=a
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

set smartindent
set autoindent
syntax on
colorscheme molokai
set t_Co=256
