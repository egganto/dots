set nocompatible

"laststatus
set laststatus=2
set statusline=%F         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=\ %{strftime('%A-%H:%M')} " Time

"screen configs
set cursorline

"basic configs (line number + fuzzy search);
set nu
set rnu
set path+=**
set wildmenu

call plug#begin()

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

