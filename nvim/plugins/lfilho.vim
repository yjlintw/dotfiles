" Appearance

"Plug 'lfilho/base16-vim'
Plug 'w0ng/vim-hybrid'

" Languages

Plug 'josuesasilva/vim-spell-pt-br'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug 'Slava/vim-spacebars'

" Search

Plug 'henrik/vim-indexed-search'

" Text objects

Plug 'terryma/vim-expand-region'
Plug 'kana/vim-textobj-lastpat'

" Other improvements

Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'lfilho/cosco.vim'
Plug 'tommcdo/vim-exchange'
Plug 'AndrewRadev/sideways.vim'

if system('uname')=~'Darwin'
    Plug 'zerowidth/vim-copy-as-rtf'
endif
