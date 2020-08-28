"+--------------+
"+  Created By  + 
"+ Karthik Nayak+
"+--------------+

syntax on                                   " syntax is highlighted
set title                                   " set the window’s title, reflecting the file currently being edited
set splitright                              " splits window to the right 
set splitbelow                              " splits the window to the bottom 
set relativenumber                          " sets relative line number
set number                                  " sets line numbers
set tabstop=4                               " sets tabspace to 4
set autoindent                              " indentation carries to the next line
set shiftwidth=4                            " when shifting, indent use 4 spaces
set wildmenu                                " better command-line completion
set expandtab                               " convert tabs to spaces
set cursorline                              " highlights the current line
set nowrap                                  " no wrapping of characters 
set noswapfile                              " does not create a swap file filetype indent on                          
set showmatch                               " shows the matching brackets 
set ruler                                   " shows row and column information
set autoread                                " autoreloads
set linebreak                               " Wrap lines at convenient points
set noswapfile                              " Disable creating swap file
set nobackup                                " Disable saving backup file
set nowritebackup                           " Disable writing backup file
set incsearch                               " Searches while typing

call plug#begin('~/.vim/plugged')
   Plug 'scrooloose/nerdtree'              " Plugin for file-explorer
   Plug 'chun-yang/auto-pairs'             " Plugin for auto-complete of brackets
   Plug 'flazz/vim-colorschemes'           " Plugin for themes
   Plug 'vim-airline/vim-airline'          " Plugin for status bar
   Plug 'vim-airline/vim-airline-themes'   " Plugin for vim-airline themes
   Plug 'SirVer/ultisnips'                 " Plugin engine 
   Plug 'honza/vim-snippets'               " Plugin for snippets
   Plug 'preservim/nerdcommenter'   
call plug#end()

" disables the arrow keys in normal mode
   noremap <Up> <Nop>
   noremap <Down> <Nop>
   noremap <Left> <Nop> 
   noremap <Right> <Nop> 
 
 " set shortcut for tabchange
   nnoremap <F3> gt 
   nnoremap <F2> gT
 
 " set shortcut for copy, paste
   vnoremap <C-c> "+y
   map <C-v> "+P


   :autocmd InsertEnter * set cul
   :autocmd InsertLeave * set nocul 

" Cursor type
    let &t_SI = "\<esc>[5 q"
    let &t_SR = "\<esc>[3 q"
    let &t_EI = "\<esc>[2 q"

" To avoid delay in changing the cursor
    set ttimeout
    set ttimeoutlen=1
    set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
    set ttyfast

" Mapping different keys 
   :imap jj <Esc>
   :nnoremap zz :update<cr>


