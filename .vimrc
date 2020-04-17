set nocompatible
""�����к�
set nu

" ��ʾ���İ���
"if version >= 603
"    set helplang=cn
"    set encoding=utf-8
"endif
set  incsearch
"����tab���Ŀո���
set tabstop=4
"��F2����ճ��ģʽ
""set pastetoggle=<F2>
set cursorline
set scrolloff=10
set hls
"���ñ�������·��
set path+=customers/**
set ignorecase"����ģʽ���Դ�Сд

"���á�,w����insertģʽ�±����ļ�
let mapleader=','
inoremap <leader>w <Esc>:w<cr>

"�ڲ���ģʽ������jj��Ϊesc����
inoremap jj <Esc>

"ʹ��ctrl+h/j/k/l �л�����
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"ʹ�ÿո��ѡ��һ������
"map <space> viw
"���ÿո��Ϊ:ls 
nnoremap <space> :ls<cr>
"��insertģʽ��ʹ��ctrl + vճ��
inoremap <C-v>  <C-r>0
"��noremapģʽ��ʹ��ctrl-p
nnoremap <C-p> :Files<cr> 
nnoremap <C-p>p :Files 
"��noremapģʽ��ʹ��ctrl-p
nnoremap <leader>q :Files customers<cr> 
"���������������
"set fileencoding=gb18030 
"set fileencodings=utf-8,gb18030,utf-16,big5
"�����ļ����Ķ�ʱ�Զ�����
set autoread
"�����Զ����루������
"�������ܶ��뷽ʽ��
set smartindent
set autoindent
set ruler            " ��ߣ�������ʾ���λ�õ��кź��кţ����ŷָ���ÿ�����ڶ����Լ��ı�ߡ����������״̬�У������������ʾ����������ʾ����Ļ�����һ���ϡ�
" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0
""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb

    " ��cscope�tag���ctrl+]������bug
    nmap :tj =expand("")

    if filereadable("cscope.out")
      cs add cscope.out
    endif

    " Use both cscope and ctag
    set cscopetag

    " Use tags for definition search first
    set cscopetagorder=1

    set csverb

endif
"===========================vim������=========================
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"�����vim-signify
Plug 'mhinz/vim-signify'

"�������ʾ�ļ���Ŀ¼
Plug 'scrooloose/nerdtree'
"״̬������
Plug 'vim-airline/vim-airline'

"����������ʾ��
"������ɫ����
Plug 'altercation/vim-colors-solarized'
"Plug 'w0ng/vim-hybrid'

"������ɫ
"���ø�����ʾ
syntax on
syntax enable
set t_Co=256
"colors evening
"let g:solarized_termtrans = 2
set background=dark
"set termguicolors
colors solarized
"ģ������ctrl+p
"Plug 'kien/ctrlp.vim'
"�����ƶ�
Plug 'easymotion/vim-easymotion'
"�ɶԲ���
"Plug 'tpope/vim-surround'
"fzf��������
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"�����滻
Plug 'brooth/far.vim'
"Plug 'fatih/vim-go'
"Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'universal-ctags/ctags'
"Plug 'szw/vim-tags'

"����
Plug 'vim-scripts/AutoComplPop'

""""""""""""""""""""""""""""""
" ����cscope.out,tag
""""""""""""""""""""""""""""""
Plug 'vim-scripts/autoload_cscope.vim'
" Initialize plugin system
call plug#end()

"nerdtree�����ݼ�����
noremap <leader>v :NERDTreeFind<cr>
noremap <leader>g :NERDTreeToggle<cr>
noremap <leader>t :NERDTree<cr>
"ctrlp�����ݼ�����
"let g:ctrlp_map = '<c-p>'
"easymotion��������ٶ�λ��λ��
nmap ss <Plug>(easymotion-s2)



