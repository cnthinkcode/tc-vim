"作者：何健源 
"描述：vim配置文件
"邮箱: thinkcode @126.com
"参考：www.vimer.cn

"判断当前操作系统类型
if(has("win32") || has("win95") || has("win64") || has("win16")) 
    leg g:iswindows=1
else
    let g:iswindows=0

"关闭vi模式
set nocompatible

"语法高亮
syntax on

if has("autocmd")
    filetype plugin indent on "根据文件缩进
    augroup vimrcEx
    au!
    autocmd FileType text setlocal textwidth = 78
    autocmd BufReadPost *
                \ if line("'\'") > 1 && line("'\'") <= line("$")|
                \ exe  "normal! g`\"" |
                \ endif
    augroup END
else
    "智能缩进
    set autoindent " always set autoindenting on
endif " has("autocmd")

"TAB为4个空格
set tabstop=4
"高亮显示结果
set hlsearch
"不自动换行
set nowrap
"搜索文字，实时匹配
set incsearch
"允许空格键使用
set backspace=indent,eol,start whichwrap+=<,>,[,]

"字体设置


