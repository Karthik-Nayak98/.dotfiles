" Created By
" Karthik Nayak

    set syntax                                  " syntax is highlighted
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
    set wrap                                    " characters goes off the screen
    set noswapfile                              " does not create a swap file filetype indent on                          
    set lines=999 columns=999                   " sets total rows to 999 and columns to 120
    set showmatch                               " shows the matching brackets 
    set ruler                                   " shows row and column information
    set autoread                                " autoreloads
    set guifont=\Hack\ Regular\ 12              " sets font & font size 
      
   " remove annoying beep sound in gvim
    set noerrorbells visualbell t_vb=
    if has('autocmd')
        autocmd GUIEnter * set visualbell t_vb=
    endif

    call plug#begin()
	    Plug 'scrooloose/nerdtree'              " Plugin for file-explorer
	    Plug 'chun-yang/auto-pairs'             " Plugin for auto-complete of brackets
	    Plug 'flazz/vim-colorschemes'           " Plugin for themes
        Plug 'vim-airline/vim-airline'          " Plugin for status bar
        Plug 'vim-airline/vim-airline-themes'   " Plugin for vim-airline themes
        Plug 'SirVer/ultisnips'                 " Plugin engine 
        Plug 'honza/vim-snippets'               " Plugin for snippets
    call plug#end()

    let g:airline_powerline_fonts = 1           " setting default font as powerline

    " command to load snippets for .cpp file
    autocmd bufnewfile *.cpp 0r ~/.vim/templates/skeleton.cpp
    
    " command to add date to .cpp file in the header
    autocmd bufnewfile *.cpp so ~/.vim/templates/cpp_header.txt
    autocmd bufnewfile *.cpp exe "1," . 5 . "g/DATE :.*/s//DATE : " .strftime("%d-%b-%y")
    autocmd bufwritepre,filewritepre *.cpp execute "normal ma"
    autocmd bufwritepre,filewritepre *.cpp exe "1," . 10 . "g/DATE :.*/s/DATE :.*/DATE : " .strftime("%d-%b-%y")
    autocmd bufwritepost,filewritepost *.cpp execute "normal `a"
 
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

 " compilation flags for .cpp file
    autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 -ulimit -Wall -Wno-unused-result -O2 % -o %:r<CR>
    autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -Wshadow -Wall -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %:r<CR>
    map <F5> :<C-U>!./%:r<CR>

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

