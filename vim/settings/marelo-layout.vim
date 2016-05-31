" Text indentation, special chars, wrapping
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Some file types use real tabs
au FileType {make,gitconfig} set noexpandtab sw=4

set splitright " Vertical split on right
set splitbelow " Horizontal split on below
set showtabline=2 " Always display tabline > prevents window resizing when closing down to just one tab

set relativenumber
set diffopt+=vertical
