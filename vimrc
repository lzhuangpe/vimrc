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
" ��������
" ========================================

" �����ļ����Ͳ��
filetype plugin on
filetype indent on

" ���ⲿ�����ļ�ʱ�Զ���ȡ
set autoread

" �Ǽ���ģʽ
set nocompatible   

" vim ����������ģʽ���ܲ�ȫ
set wildmenu

" ִ�к�ʱ�����»���
set lazyredraw

" �رմ�����ʾ��
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" �رձ���
set nobackup
set nowb
set noswapfile

" �����ñ��������Ч
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ���Զ���λ�����༭��λ��, ��Ҫȷ�� .viminfo ��ǰ�û���д
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ========================================
" ��������
" ========================================

" �������Ĳ���ϵͳ��������
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" ʼ����ʾ״̬��
set laststatus=2
" ״̬���߶�
set cmdheight=1
" ��ʾ��ǰ���λ��
set ruler
" ��ֹ����
set nowrap

" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn

" �������ƶ����ʱ�������Ϸ����·����ٻᱣ����ʾ������
set scrolloff=7

" ��ֹ�������
set gcr=a:block-blinkon0

" ��ֹ������
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" ��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T

" ��������
set guifont=YaHei_Consolas_Hybrid:h12


" ========================================
" �������
" ========================================

" ����ʱ���Դ�Сд
set ignorecase
" ��һ����дʱ���Դ�Сд����
set smartcase
" ������ʾ����������
set hlsearch
" ����ʵʱ����
set incsearch 
" ƥ��ɶԵķ���
set showmatch
set mat=2


" ========================================
" �������
" ========================================

" ����Ĭ�ϱ���Ϊ utf8
set encoding=utf8
" ����Ĭ������Ϊ
set ffs=unix,dos,mac


" ========================================
" ������� 
" ========================================

" ʹ�ÿո�������Ʊ��
set expandtab
" �����ļ��������ط��������ո�����ȷ��һ�� tab ʱ���ٸ��ո�
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" 500 ���ַ�����
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

