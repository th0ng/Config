" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set line number
set relativenumber

" Highlight cursor line underneath the cursor horizontally
set cursorline

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" Set the commands to save in history. Default number is 20.
set history=1000

" Enable auto completion menu after pression TAB.
set wildmenu

" Make wildmenu behave similar to Bash completion.
set wildmode=list:longest

" Ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" MAPPING

" Set Space as the leader key.
nnoremap <SPACE> <Nop>
map <Space> <leader>

" Press Space \ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Yank from cursor to the end of line
nnoremap Y y$

" STATUS LINE 

" Clear the status line when vimrc is reloaded.
set statusline=

" Status line left side
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
