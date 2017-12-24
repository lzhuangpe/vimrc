" Use before config if available {
 if filereadable(expand("$HOME/vimfiles/vimrc.before"))
    source $HOME/vimfiles/vimrc.before
 endif
" }

" Use bundles config {
if filereadable(expand("$HOME/vimfiles/vimrc.bundles"))
    source $HOME/vimfiles/vimrc.bundles
endif
" }

" ========================================
" 基本设置
" ========================================

" 启用文件类型插件
filetype plugin on
filetype indent on

" 从外部更改文件时自动读取
set autoread

" 非兼容模式
set nocompatible   

" vim 自身命令行模式智能补全
set wildmenu

" 执行宏时不重新绘制
set lazyredraw

" 关闭错误提示音
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" 关闭备份
set nobackup
set nowb
set noswapfile

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ========================================
" 界面设置
" ========================================

" 避免中文操作系统出现乱码
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 始终显示状态栏
set laststatus=2
" 状态栏高度
set cmdheight=1
" 显示当前光标位置
set ruler
" 禁止折行
set nowrap

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" 禁止光标闪缩
set gcr=a:block-blinkon0

" 禁止滚动条
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 设置字体
set guifont=YaHei_Consolas_Hybrid:h12


" ========================================
" 搜索相关
" ========================================

" 搜索时忽略大小写
set ignorecase
" 有一个大写时，对大小写敏感
set smartcase
" 高亮显示搜索的内容
set hlsearch
" 开启实时搜索
set incsearch 
" 匹配成对的符号
set showmatch
set mat=2


" ========================================
" 编码相关
" ========================================

" 设置默认编码为 utf8
set encoding=utf8
" 设置默认类型为
set ffs=unix,dos,mac


" ========================================
" 缩进相关 
" ========================================

" 使用空格而不是制表符
set expandtab
" 根据文件中其他地方的缩进空格数来确定一个 tab 时多少个空格
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" 500 个字符换行
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

