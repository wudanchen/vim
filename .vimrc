set nocompatible
""设置行号
set nu

" 显示中文帮助
"if version >= 603
"    set helplang=cn
"    set encoding=utf-8
"endif
set  incsearch
"设置tab键的空格数
set tabstop=4
"按F2进入粘贴模式
""set pastetoggle=<F2>
set cursorline
set scrolloff=10
set hls
"设置变量搜索路径
set path+=customers/**
set ignorecase"搜索模式忽略大小写

"设置“,w”在insert模式下保存文件
let mapleader=','
inoremap <leader>w <Esc>:w<cr>

"在插入模式下设置jj作为esc按键
inoremap jj <Esc>

"使用ctrl+h/j/k/l 切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"使用空格键选中一个单词
"map <space> viw
"设置空格键为:ls 
nnoremap <space> :ls<cr>
"在insert模式下使用ctrl + v粘贴
inoremap <C-v>  <C-r>0
"在noremap模式下使用ctrl-p
nnoremap <C-p> :Files<cr> 
nnoremap <C-p>p :Files 
"在noremap模式下使用ctrl-p
nnoremap <leader>q :Files customers<cr> 
"解决中文乱码问题
"set fileencoding=gb18030 
"set fileencodings=utf-8,gb18030,utf-16,big5
"设置文件被改动时自动载入
set autoread
"设置自动对齐（缩进）
"设置智能对齐方式。
set smartindent
set autoindent
set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb

    " 靠cscope縯ag靠縞trl+]靠靠靠bug
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
"===========================vim管理器=========================
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"插件：vim-signify
Plug 'mhinz/vim-signify'

"插件：显示文件夹目录
Plug 'scrooloose/nerdtree'
"状态栏美化
Plug 'vim-airline/vim-airline'

"代码缩进显示行
"主题颜色设置
Plug 'altercation/vim-colors-solarized'
"Plug 'w0ng/vim-hybrid'

"设置配色
"设置高亮显示
syntax on
syntax enable
set t_Co=256
"colors evening
"let g:solarized_termtrans = 2
set background=dark
"set termguicolors
colors solarized
"模糊搜索ctrl+p
"Plug 'kien/ctrlp.vim'
"快速移动
Plug 'easymotion/vim-easymotion'
"成对操作
"Plug 'tpope/vim-surround'
"fzf快速搜索
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"批量替换
Plug 'brooth/far.vim'
"Plug 'fatih/vim-go'
"Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'universal-ctags/ctags'
"Plug 'szw/vim-tags'

"靠靠
Plug 'vim-scripts/AutoComplPop'

""""""""""""""""""""""""""""""
" 靠靠cscope.out,tag
""""""""""""""""""""""""""""""
Plug 'vim-scripts/autoload_cscope.vim'
" Initialize plugin system
call plug#end()

"nerdtree插件快捷键设置
noremap <leader>v :NERDTreeFind<cr>
noremap <leader>g :NERDTreeToggle<cr>
noremap <leader>t :NERDTree<cr>
"ctrlp插件快捷键设置
"let g:ctrlp_map = '<c-p>'
"easymotion插件，快速定位到位置
nmap ss <Plug>(easymotion-s2)



