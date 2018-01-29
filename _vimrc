set nocompatible

let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.

filetype plugin on
syntax on

set wildmenu

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
inoremap <S-Tab> <C-d>

set backspace=indent,eol,start



" switch to visual mode and extend selection upwards
inoremap <S-Up> <esc>v<Up>
" make sure the same key combination works in visual mode
vnoremap <S-Up> <Up>

" do the same for other arrow keys
inoremap <S-Down> <esc>v<Down>
vnoremap <S-Down> <Down>
inoremap <S-Left> <esc>v<Left>
vnoremap <S-Left> <Left>
inoremap <S-Right> <esc>v<Right>
vnoremap <S-Right> <Right>
inoremap <S-End> <esc>v$
vnoremap <S-End> $
inoremap <S-Home> <esc>v^
vnoremap <S-Home> ^



set number relativenumber
augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

inoremap <Home> <esc>^i

nnoremap gb :ls<CR>:b<Space>