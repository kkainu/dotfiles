let mapleader = ','                             " leader
set backspace=2                                 " backspace in insert mode works like normal editor
syntax on                                       " syntax highlighting
filetype indent on                              " activates indenting for files
set autoindent                                  " auto indenting
set number                                      " line numbers
set nobackup                                    " get rid of anoying ~file
map <Leader>j :%!python -m json.tool<CR>          " json formatting
au BufRead,BufNewFile *.json set filetype=json  " json syntax highlight

