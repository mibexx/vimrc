call plug#begin('~/nvim/plugged')

Plug 'ludovicchabant/vim-gutentags'

Plug 'scrooloose/nerdtree'
Plug 'bfredl/nvim-miniyank'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'

Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'

Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor'
Plug 'phpactor/ncm2-phpactor'

Plug 'junegunn/fzf.vim'

Plug 'neomake/neomake'
Plug 'adoy/vim-php-refactoring-toolbox'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'majutsushi/tagbar'

Plug 'joonty/vdebug'

Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'


call plug#end()


" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Show brief information about the symbol under the cursor
nmap <Leader>K :call phpactor#Hover()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
