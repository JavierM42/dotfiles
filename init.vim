call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
call plug#end()

"mouse support
set mouse=a

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" NERDTree on ctrl+n
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

nnoremap <C-P> :Files<CR>
nnoremap <C-F> :Ag<CR>

" show line numbers
set number

" make emmet behave well with JSX in JS and TS files
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'vue' : {
\      'extends' : 'vue',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}
