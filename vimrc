set mouse=a
" following two lines remap copy/paste plus shit key
map m :set mouse=a<cr>
map <leader>m :set mouse=<cr>
" make your scrolling to control up and down
set ttymouse=xterm2
:map <M-Esc>[62~ <MouseDown>
:map! <M-Esc>[62~ <MouseDown>
:map <M-Esc>[63~ <MouseUp>
:map! <M-Esc>[63~ <MouseUp>
:map <M-Esc>[64~ <S-MouseDown>
:map! <M-Esc>[64~ <S-MouseDown>
:map <M-Esc>[65~ <S-MouseUp>
:map! <M-Esc>[65~ <S-MouseUp>
syntax on
"設定語法上色
set encoding=utf-8
set ic
"搜尋時忽略大小寫

"NO backup and no .swp
set nobackup
set noswapfile
set diffopt+=vertical
set background=dark
"let g:gruvbox_italic=1
colorscheme gruvbox
hi SpellBad ctermfg=253 ctermbg=300
hi SpellCap ctermfg=253 ctermbg=190
"選擇Colorscheme

set history=1000
"存放最大指令數

set cursorline
"標記游標所在的列

set ruler
"顯示游標所在的座標

set autoread
"檔案遭其他程式更改時會自動重新讀取

set hlsearch
"搜尋到的文字反白顯示

set bs=2
"設定Insert模式下BackSpace的使用

set nocompatible
filetype off
"設定VI和VIM不相容模式

"以下為vundle的插件管理器安裝設定
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Plugin 'bling/vim-airline'
Plugin 'c9s/colorselector.vim'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'L9'
"Plugin 'FuzzyFinder'
Plugin 'tomtom/tcomment_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jQuery'
Plugin 'majutsushi/tagbar'
"Plugin 'ervandew/screen'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/tmux-sensible'
Plugin 'vim-scripts/EnhCommentify.vim'    "\x 註解
Plugin 'Valloric/YouCompleteMe'
"Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/syntastic'
"Plugin 'wookiehangover/jshint.vim'
Plugin 'rainbow_parentheses.vim' "括號有顏色
"Plugin 'Yggdroot/indentLine'      "空白有線
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Raimondi/delimitMate' "自動補全括號
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kevinw/pyflakes-vim'    "for python syntastic
Plugin 'hdima/python-syntax'    "for pyhton syntax
Plugin 'mattn/emmet-vim'        "for html5 css great!!
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/YankRing.vim' "for history paste
"Plugin 'xolox/vim-reload'
Plugin 'rdnetto/YCM-Generator'
Plugin 'morhetz/gruvbox'
"上面幾行設定安裝的插件

filetype plugin indent on
filetype plugin on

set pastetoggle=<F9>
set bsdir=buffer
"設定文件瀏覽器的目錄為當前的目錄

set enc=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,big5
"編碼設定

set number
"顯示行號

set ic
"搜尋時忽略大小寫

set tabstop=4
set softtabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set smarttab
"set expandtab
if has( "autocmd" )
"    autocmd FileType javascript setlocal  expandtab
	autocmd FileType python setlocal  expandtab
 endif
"以Space取代Tab
"設定Tab寬度為4字元
"設定縮排寬度為4字元


set foldmethod=indent
set foldlevelstart=99
"褶疊設定
"默認不褶疊


let g:vim_markdown_folding_disabled = 0



"map <leader>tn :tabnew<cr>
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"設定Tab操作的快捷鍵
"預設<leader>是\
"\tn代表新增一個分頁
"\tc代表關閉分頁
"\tm代表分頁移動
map <F3> :tabnew<cr>
map <F4> :q<cr>
imap <F3> <ESC>:tabnew<cr>
imap <F4> <ESC>:q<cr>
"F3代表新增一個分頁
"F4代表關閉分頁


"--------NERDTree Setting--------
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w
"autoopen NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen=0
"設定NERDTree開啟檔案後就自動隱藏
let NERDTreeShowHidden=1
let NERDChristmasTree=1
let g:NERDTreeWinSize=25
let NERDTreeShowBookmarks=1
"--------NERDTree setting---------

"------------------------
"------HotKey Setting----
imap <C-v> <Esc>pi

map <silent><F2> :NERDTreeToggle<CR>
imap <silent><F2> <Esc>:NERDTreeToggle<CR>
map <silent><F10> :TagbarToggle<CR>
imap <silent><F10> <Esc>:TagbarToggle><CR>

imap <C-z> <Esc>ui
imap <C-y> <Esc><C-r>i
imap <F5> <ESC>:call Do_FileSave()<CR>i
"imap <F6> <ESC>:call Do_FileSaveAndQuit()<CR>
"<Esc>:w<CR>i
map <F5> :call Do_FileSave()<CR>
"map <F6> :call Do_FileSaveAndQuit()<CR>
vmap <C-z> <Esc>ui
vmap <C-y> <Esc><C-r>i
map <C-y> <C-r>

imap <C-p> <Esc><C-p>
"map <C-w>t :tabedit <CR>
"imap <C-w>t <Esc>:tabedit <CR>

"map <F9> :call Do_OneFileMake()<CR>map <F5> :call Do_OneFileMake()<CR>
" === 当前文件保存 ===
function! Do_FileSave()
    let source_file_name=expand("%:t")
    if source_file_name==""
        echoh1 WarningMsg | echo "The file name is empty." | echoh1 None
        return
    endif

    execute "w!"
endfunction

" === 当前文件保存退出 ===
function! Do_FileSaveAndQuit()
    let source_file_name=expand("%:t")
    if source_file_name==""
        echoh1 WarningMsg | echo "The file name is empty." | echoh1 None
        return
    endif

    execute "wq"
endfunction
"find, save , redo, unredo setting

" === 单文件编译 仅支持c、cc、cpp、go文件 ===
function! Do_OneFileMake()
    if expand("%:p:h")!=getcwd()
        echoh1 WarningMsg | echo "Failed to make. This's file is not in the current dir." | echoh1 None
        return
    endif

    let source_file_name=expand("%:t")

    if source_file_name==""
        echoh1 WarningMsg | echo "The file name is empty." | echoh1 None
        return
    endif

    if ( (&filetype!="c")&&(&filetype!="cc")&&(&filetype!="cpp")&&(&filetype!="go") )
    echoh1 WarningMsg | echo "Please just make c、cc、cpp and go file." | echoh1 None
        return
    endif

    if &filetype=="c"
        set makeprg=gcc\ %\ -o\ %<
    endif

    execute "w"
    execute "silent make"
    execute "q"
endfunction




inoremap <F11> <Esc>gT
inoremap <F12> <Esc>gt
noremap <F11> gT
noremap <F12> gt
"分頁換行設定
"F12下一個分頁
"F11上一個分頁
"-------completed----------
"--------------------------

"ctrlp設定
let g:ctrlp_map='<c-o>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit = 0 " 離開 vim 後不要清 cache
let g:ctrlp_max_files = 1000000 " 加大 cache 索引的檔案數, 否則會漏找檔案
let g:ctrlp_user_command = 'find %s -type f' " 使用 find 加速建索引的速度
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

"ariline插件設定
set t_Co=256
set laststatus=2
let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1

let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#leftsep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1

"JS-syntax setting
"let javascript_enable_domhtmlcss=1
"let javascript_ignore_javaScriptdoc=0


"=========Snippts Setting=============
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
imap <C-d> <Plug>snipMateNextOrTrigger
smap <C-d> <Plug>snipMateNextOrTrigger


" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"=========================================

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType javascript setlocal omnifunc=tern#Complete
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags



"總是顯示Tab列
set showtabline=2
" SetTabLine
set tabline=%!SetTabLine()
hi TabLine           cterm=bold      ctermfg=15    ctermbg=242   gui=underline guibg=#6c6c6c guifg=White
hi TabLineSel        cterm=underline ctermfg=15    ctermbg=32   gui=NONE      guifg=White
hi TabLineNr         cterm=bold      ctermbg=242   guibg=#444444
hi TabLineNrSel      cterm=underline ctermfg=15    ctermbg=32   guifg=#00d7ff
hi TabLineFill       cterm=reverse   gui=reverse
hi TabLineMore       cterm=underline ctermfg=White ctermbg=236   gui=underline guifg=White   guibg=#303030
hi TabLineSplitNr    cterm=NONE      ctermfg=148 ctermbg=242   gui=underline,italic guifg=#afd700   guibg=#6c6c6c
hi TabLineSplitNrSel cterm=underline ctermfg=148 ctermbg=32   gui=NONE,italic      guifg=#afd700   guibg=#303030
function! SetTabLine()
  " NOTE: left/right padding of each tab was hard coded as 1 space.
  " NOTE: require Vim 7.3 strwidth() to display fullwidth text correctly.

  " settings
  let tabMinWidth = 0
  let tabMaxWidth = 40
  let tabMinWidthResized = 15
  let tabScrollOff = 5
  let tabEllipsis = '…'
  let tabDivideEquel = 0

  let s:tabLineTabs = []

  let tabCount = tabpagenr('$')
  let tabSel = tabpagenr()

  " fill s:tabLineTabs with {n, filename, split, flag} for each tab
  for i in range(tabCount)
    let tabnr = i + 1
    let buflist = tabpagebuflist(tabnr)
    let winnr = tabpagewinnr(tabnr)
    let bufnr = buflist[winnr - 1]

    let filename = bufname(bufnr)
    let filename = fnamemodify(filename, ':p:t')
    let buftype = getbufvar(bufnr, '&buftype')
    if filename == ''
      if buftype == 'nofile'
        let filename .= '[Scratch]'
      else
        let filename .= '[New]'
      endif
    endif
    let split = ''
    let winCount = tabpagewinnr(tabnr, '$')
    if winCount > 1   " has split windows
      let split .= winCount
    endif
    let flag = ''
    if getbufvar(bufnr, '&modified')  " modified
      let flag .= '+'
    endif
    if strlen(flag) > 0 || strlen(split) > 0
      let flag .= ' '
    endif

	call add(s:tabLineTabs, {'n': tabnr, 'split': split, 'flag': flag, 'filename': filename})
  endfor

  " variables for final oupout
  let s = ''
  let l:tabLineTabs = deepcopy(s:tabLineTabs)

  " overflow adjustment
  " 1. apply min/max tabWidth option
  if s:TabLineTotalLength(l:tabLineTabs) > &columns
    unlet i
    for i in l:tabLineTabs
      let tabLength = s:CalcTabLength(i)
      if tabLength < tabMinWidth
        let i.filename .= repeat(' ', tabMinWidth - tabLength)
      elseif tabMaxWidth > 0 && tabLength > tabMaxWidth
        let reserve = tabLength - StrWidth(i.filename) + StrWidth(tabEllipsis)
        if tabMaxWidth > reserve
          let i.filename = StrCrop(i.filename, (tabMaxWidth - reserve), '~') . tabEllipsis
        endif
      endif
    endfor
  endif
  " 2. try divide each tab equal-width
  if tabDivideEquel
    if s:TabLineTotalLength(l:tabLineTabs) > &columns
      let divideWidth = max([tabMinWidth, tabMinWidthResized, &columns / tabCount, StrWidth(tabEllipsis)])
      unlet i
      for i in l:tabLineTabs
        let tabLength = s:CalcTabLength(i)
        if tabLength > divideWidth
          let i.filename = StrCrop(i.filename, divideWidth - StrWidth(tabEllipsis), '~') . tabEllipsis
        endif
      endfor
    endif
  endif
  " 3. ensure visibility of current tab 
  let rhWidth = 0
  let t = tabCount - 1
  let rhTabStart = min([tabSel - 1, tabSel - tabScrollOff])
  while t >= max([rhTabStart, 0])
    let tab = l:tabLineTabs[t]
    let tabLength = s:CalcTabLength(tab)
    let rhWidth += tabLength
    let t -= 1
  endwhile
  while rhWidth >= &columns
    let tab = l:tabLineTabs[-1]
    let tabLength = s:CalcTabLength(tab)
    let lastTabSpace = &columns - (rhWidth - tabLength)
    let rhWidth -= tabLength
    if rhWidth > &columns
      call remove(l:tabLineTabs, -1)
    else
      " add special flag (will be removed later) indicating that how many
      " columns could be used for last displayed tab.
      if tabSel <= tabScrollOff || tabSel < tabCount - tabScrollOff
        let tab.flag .= '>' . lastTabSpace
      endif
    endif
  endwhile

  " final ouput
  unlet i
  for i in l:tabLineTabs
    let tabnr = i.n

    let split = ''
    if strlen(i.split) > 0
      if tabnr == tabSel
        let split = '%#TabLineSplitNrSel#' . i.split .'%#TabLineSel#'
      else
        let split = '%#TabLineSplitNr#' . i.split .'%#TabLine#'
      endif
    endif

    let text = ' ' . split . i.flag . i.filename . ' '

    if i.n == l:tabLineTabs[-1].n
       if match(i.flag, '>\d\+') > -1 || i.n < tabCount
        let lastTabSpace = matchstr(i.flag, '>\zs\d\+')
        let i.flag = substitute(i.flag, '>\d\+', '', '')
        if lastTabSpace <= strlen(i.n)
          if lastTabSpace == 0
            let s = strpart(s, 0, strlen(s) - 1)
          endif
          let s .= '%#TabLineMore#>'
          continue
        else
          let text = ' ' . i.split . i.flag . i.filename . ' '
          let text = StrCrop(text, (lastTabSpace - strlen(i.n) - 1), '~') . '%#TabLineMore#>'
          let text = substitute(text, ' ' . i.split, ' ' . split, '')
        endif
       endif
    endif

    let s .= '%' . tabnr . 'T'  " start of tab N

    if tabnr == tabSel
      let s .= '%#TabLineNrSel#' . tabnr . '%#TabLineSel#'
    else
      let s .= '%#TabLineNr#' . tabnr . '%#TabLine#'
    endif

    let s .= text

  endfor

  let s .= '%#TabLineFill#%T'
  return s
endf

function! s:CalcTabLength(tab)
  return strlen(a:tab.n) + 2 + strlen(a:tab.split) + strlen(a:tab.flag) + StrWidth(a:tab.filename)
endf

function! s:TabLineTotalLength(dict)
  let length = 0
  for i in (a:dict)
    let length += strlen(i.n) + 2 + strlen(i.split) + strlen(i.flag) + StrWidth(i.filename)
  endfor
  return length
endf

" }}}2   字串長度（column 數）   {{{2

  function! StrWidth(str)
    if exists('*strwidth')
      return strwidth(a:str)
    else
      let strlen = strlen(a:str)
      let mstrlen = strlen(substitute(a:str, ".", "x", "g"))
      if strlen == mstrlen
        return strlen
      else
        " Note: 暫不處理全形字（以下值不正確）
        return strlen
      endif
    endif
  endf

" }}}2   依字串長度（column 數）裁切多餘文字   {{{2

  function! StrCrop(str, len, ...)
    let l:padChar = a:0 > 0 ? a:1 : ' '
    if exists('*strwidth')
      let text = substitute(a:str, '\%>' . a:len . 'c.*', '', '')
      let remainChars = split(substitute(a:str, text, '', ''), '\zs')
      while strwidth(text) < a:len
        let longer = len(remainChars) > 0 ? (text . remove(remainChars, 0)) : text
        if strwidth(longer) < a:len
          let text = longer
        else
          let text .= l:padChar
        endif
      endwhile
      return text
    else
      " Note: 暫不處理全形字（以下值不正確）
      return substitute(a:str, '\%>' . a:len . 'c.*', '', '')
    endif
  endf

set showcmd
"右下角顯示已輸入的指令

"map <C-l> :exec("tag ".expand("<cword>"))<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Setting ctags' tag file
"set tags+=/mailplus/source/tidy-html5/tags
"set tags+=/mailplus/source/mailcore2/tags
"set tags+=/mailplus/source/libetpan-1.x/tags
"set tags+=/mailplus/source/MailClient/tags
"set tags+=/server/source/libsynomailserver/tags
"set tags+=/server/source/MailPlus-Server/tags
set tags+=/synosrc/ds.base/source/webapi-DSM5/tags
set tags+=/synosrc/ds.base/source/jsoncpp/tags
set tags+=/synosrc/ds.base/source/libsynosdk/tags
set tags+=/synosrc/ds.base/source/libsynocore/tags
set tags+=/synosrc/ds.base/source/libsynoacl/tags
map <c-l> g<c-]>
" for ycm
"let g:ycm_global_ycm_extra_conf = '/mailplus/source/MailClient/src/.ycm_extra_conf.py'
"let g:EclimCompletionMethod = 'omnifunci'
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files =1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '!*'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_open_loclist_on_ycm_diags = 1
"let g:ycm_cache_omnifunc = 1
nnoremap <F7> <C-O>
":YcmCompleter GoTo:Declaration<CR>
inoremap <F7> <Esc><C-O>i
nmap <F8> <C-I>
":YcmCompleter GoToDefinition<CR>
imap <F8> <Esc><C-I>i
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nmap <F6> :YcmDiags<CR>
imap <F6> <ESC>:YcmDiags<CR>

"nmap <F8> :YcmGenerateConfig<CR>
let g:ycm_filetype_blacklist =  { 
      \ 'tagbar'  :  1 , 
      \ 'qf'  :  1 , 
      \ 'notes'  :  1 , 
      \ 'markdown'  :  1 , 
      \ 'unite'  :  1 , 
      \ 'text'  :  1 , 
      \ ' vimwiki'  :  1 , 
      \ 'gitcommit'  :  1 , 
      \ }
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'javascript'  :  1 , 
      \}


" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open=0
let g:syntastic_always_populate_loc_list = 1        "show list on locallist
let g:syntastic_auto_loc_list = 0              "when open vim, locallist is on
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_exec= '/videostation/build_env/ds.x64-6.0/usr/local/bin/jshint'
"let g:syntastic_cpp_include_dirs = ['/pkg/build_env/ds.alpine-5.2/usr/include/c++/4.4']
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
"let g:syntastic_enable_ballo'-isystem',
let g:syntastic_error_symbol = '>>'
let g:syntastic_warning_symbol = '>*'
"nmap <F9> :SyntasticToggleMode<CR>
let g:syntastic_ignore_files = [ ".*\.py$" ]

" for Rainbow Parentheses
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

"===========for indentLine
let g:indentLine_color_term = 251
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
"let g:indentLine_noConcealCursor = 1
"let g:indentLine_color_term = 0




"===========for indent_guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=250
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=252
let g:indent_guides_color_change_percent = 10
let g:indent_guides_guide_size = 1








let python_highlight_all = 1


let g:pyflakes_use_quickfix = 0

"=========for vim ag
let g:ag_working_path_mode="r"   "searhc from project root
"let g:ackprg = 'ag --vimgrep'
"let g:ackprg = 'ag --nogroup --nocolor --column'
"
"=======for apparmor syntax============
autocmd BufNewFile,BufRead  /synosrc/ds.base/source/syno-aa-profiles/src/* set ft=apparmor
autocmd BufNewFile,BufRead  /synosrc/ds.base/source/syno-aa-profiles/src/* set ft=apparmor
