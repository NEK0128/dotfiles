set nocompatible
filetype off
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'devidhalter/jedi-vim'
call neobundle#end()

set t_Co=256
syntax on
set encoding=utf8
set fileencoding=utf-8
set scrolloff=5
set noswapfile
set nowritebackup
set nobackup
set backspace=indent,eol,start
set clipboard+=unnamed
set list
set number
set ruler
set matchpairs& matchpairs+=<:>
set showmatch
set matchtime=3
set wrap
set textwidth=0
set listchars=tab:>-,trail:.
set shiftround
set infercase
set ignorecase
set smartcase
set incsearch
set hlsearch
set history=10000
set ttymouse=xterm2
set showcmd
set tabstop
set autoindent
set expandtab
set shiftwidth=4
inoremap jj <Esc>
nnoremap j gj
nnoremap k gk
vnoremap v $h
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Left> <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up> <C-w>-<CR>
nnoremap <S-Down> <C-w>+<CR>

let s:local_vimrc = expand('~/.vimrc.local')
if filereadable(s:local_vimrc)
    execute 'source ' . s:local_vimrc
endif

nnoremap <silent> j gj
nnoremap <silent> k gk

noremap [Prefix]j <c-f><cr><cr>
noremap [Prefix]k <c-b><cr><cr>

autocmd FileType php,ctp :set dictionary=~/.vim/dict/php.dict
let php_folding = 0
let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_noShortTags = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
function! SQLToPHP()
%s/^\(.\+\)$/"\1 " \./g

normal G$
execute "normal ?.&lt;CR&gt;"
normal xxggVG
echo "Convert to PHP String is finished."
endfunction
command! Sqltop :call SQLToPHP()
function! SQLFromPHP()
%s/^"\(.\+\) " *\.*$/\1/g

normal ggVG
echo "Convert from PHP String is finished."
endfunction
command! Sqlfromp :call SQLFromPHP()
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PmenuSbar ctermbg=4

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplache_smart_case = 1
let g:neocomplache_min_syntax_length = 3
let g:neocomplache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

:map! <C-e> <Esc>$a
:map! <C-a> <Esc>^a
:map <C-e> <Esc>$a
:map <C-a> <Esc>^a


autocmd FileType python setlocal completeopt-=preview

