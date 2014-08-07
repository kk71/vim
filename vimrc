" kK's vim config script
" http://imkk.me
" ======================



"=============== global config =================
"关闭vi的兼容模式
set nocompatible

"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number

set go= "隐藏图形按钮
"set guioptions-=T "隐藏工具栏
"set guioptions-=m "隐藏菜单栏

"设置在编辑过程中右下角显示光标的行列信息
set ruler

"当一行文字很长时取消换行
set nowrap

"在状态栏显示正在输入的命令
set showcmd

"历史记录条数
set history=999

"搜索逐字符高亮
set hlsearch
set incsearch

"取消备份和临时文件
set nobackup
set noswapfile

"突出现实当前行(列)
set cursorline
"set cursorcolumn

"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮
syntax enable
syntax on

"内置配色
"color desert

"字体字号(linux style)
set guifont=Monospace\ 11

"设置搜索时忽略大小写
set ignorecase

"启用正则魔术
set magic

"设置在Vim中可以使用鼠标
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"自动判断编码时，依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,big5,euc-jp,euc-kr,latin1

"检测文件类型
"filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

"补全选项
set completeopt=preview,menu

"自动保存
set autowrite

"在处理未保存或只读文件的时候，弹窗确认
set confirm

"当文件被改动时自动载入
set autoread



" ============ for vundle and plugins =============
" 注意：必须先将vundle clone至~/.vim/之下
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" 让Vundle管理的插件, required.
" 必须用bash/sh
set shell=bash
Bundle 'gmarik/vundle'

"vim git插件
Bundle 'tpope/vim-fugitive'

"将系统剪贴板应用于vim
Bundle 'vim-scripts/CaptureClipboard'

"tab键快捷方式
Bundle 'ervandew/supertab'

"在每个缩进层级用空格显示竖线
Bundle 'Yggdroot/indentLine'

"vim的编程函数
Bundle 'L9'

"配色：默认为molokai
"===molokai===
Bundle 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
colorscheme molokai
"===solarized===
"Bundle 'altercation/vim-colors-solarized'
"if has('gui_running')
"    set background=light
"    colorscheme solarized
"else
"    colorscheme desert
"endif

"convenient ways to quickly reach the buffer/file/command/bookmark/tag you want
Bundle 'FuzzyFinder'

"自动弹出候选
Bundle 'AutoComplPop'

"成双成对地添加或删除空格，引号等
Bundle 'jiangmiao/auto-pairs'

"fcitx支持
Bundle 'fcitx.vim'

"CtrlP
Bundle 'kien/ctrlp.vim'
Bundle 'ctrlp-modified.vim'
Bundle 'tacahiroy/ctrlp-funky'

"快速回到上次编辑的行
Bundle 'last_edit_marker.vim'

"provides commands for highlighting text at a fixed position.
"This works by dropping "marks" for the start and end of a region to be highlighted.
"常被其他插件引用
Bundle 'synmark.vim'

"傻瓜们
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeWinSize = 18

"multi-cursors like sublime-text
Bundle 'terryma/vim-multiple-cursors'

"状态栏加强
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

"dpaste.com
Bundle 'Dpaste.com-Plugin'


" === golang ===
" for some plugins in servers of google which is blocked in China,
" edit hg in /sbin add '--insecure'
Bundle 'fatih/vim-go'



" ===vim/gVim===
" FIXME :this plugin for now contains bugs
"Bundle 'Vim-Support'

"vim script updater
Bundle 'Vim-Script-Updater'


" ===databases===
Bundle 'dbext.vim'


" ===HTML=JS-jQuery=CSS===
"html completion which is smarter than zen-coding
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
let g:sparkup="~/.vim/bundle/sparkup/sparkup.py"
let g:sparkupExecuteMapping = '<tab>'

" js frameworks
Bundle "othree/javascript-libraries-syntax.vim"

" HTML5 highlighting
Bundle 'othree/html5.vim'


" ===C(pp)===
"Bundle 'c.vim'


" ===Markdown===
Bundle 'plasticboy/vim-markdown'


" ===Python===
" Django
"Bundle 'django_templates.vim'
Bundle 'Django-Projects'

"Mako模板高亮
"注意：mako模板文件必须以.mako结尾。
Bundle 'sophacles/vim-bundle-mako'

"python-mode 语法检查、自动补全功能
Bundle 'klen/python-mode'
"代码检查
let g:pymode_lint_checkers = ['pyflakes', 'mccabe']
let g:pymode_folding = 0
"rope补全和重构
" TODO : rope自带的补全列表加载的速度缓慢
let g:pymode_rope_completion = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0

"python3兼容语法检查
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
" TODO : to enable python2/3 compatibility check, install py3kwarn in your system
" TODO : sudo pip install py3kwarn
let g:syntastic_python_checkers = ['py3kwarn']


" ===SHELL===
Bundle 'bash-support.vim'
Bundle 'Shougo/vimshell.vim'


" ===other language or config file===
Bundle 'nginx.vim'


filetype plugin indent on     " required!


" Vundle helps
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


" =======快捷键========
"F4贴到dpaste.com
map <F4> :Dpaste<CR>

"F5运行(仅限linux/unix)
map <F5> :call RunScript()<CR>
func! RunScript()
    if &filetype == 'python' || &filetype == 'sh'
        "for python script which is executable
        exec "w"
        exec "!chmod +x % ; ./%"
    else
        echo 'not an executable script'
    endif
endfunc
"End F5运行

"F6代码布局优化(优化完立即保存)
" TODO :install autopep8 and astyle
map <F6> :call FormartSrc()<CR><CR>
func FormartSrc()
    exec "w"
    if &filetype == 'py' || &filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'javascript' || &filetype== 'js'
        exec "!astyle --style=gnu --suffix=none %"
    else
        echo 'unable to format'
        return
    endif
    exec "e! %"
endfunc
"End F6代码布局优化

"F7显示隐藏NERDTree
nmap <F7> :NERDTreeToggle<CR>


"设置Ctrl+hjkl做窗口切换
"上下切换的时候，将新切入的窗口最大化
nn <c-h> <c-w>h 
nn <c-j> <c-w>j <c-w>_
nn <c-k> <c-w>k <c-w>_
nn <c-l> <c-w>l
"End 设置Ctrl+hjkl做窗口切换


"normal模式中，空格即向下滚动一行
:nmap <Space> <c-e>

"注释或解除注释
nmap cm <leader>c<space>

