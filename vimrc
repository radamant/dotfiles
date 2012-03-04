call pathogen#infect()
syntax on
filetype plugin indent on

augroup myfiletypes
  "clear old autocmds in group
  autocmd!
  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType coffee,ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
  autocmd FileType python,objc set sw=4 sts=4 et

  autocmd FileType objc map <Leader>c :CommandTFlush<CR>:CommandT Classes<CR>

  "autocmd FileType gitcommit DiffGitCached | wincmd p | vertical new | wincmd r
  autocmd FileType gitcommit DiffGitCached | wincmd t | wincmd H | wincmd L
augroup END

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

let mapleader=","

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-k> <C-w>k

map <Leader>t :CommandTFlush<CR>:CommandT<CR>
map <Leader>c :CommandTFlush<CR>:CommandT Classes<CR>
map <Leader>s :CommandTFlush<CR>:CommandT Specs<CR>

"Show line numbers
set number

" Map ,e to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%

color jellybeans

set guifont=Inconsolata-g:h14
