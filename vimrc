call pathogen#infect()
syntax on
filetype plugin indent on

augroup myfiletypes
  "clear old autocmds in group
  autocmd!
  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType coffee,ruby,haml,lua,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
  autocmd FileType python,objc set sw=4 sts=4 et

  autocmd FileType objc map <Leader>c :CommandTFlush<CR>:CommandT Classes<CR>

  "autocmd FileType gitcommit DiffGitCached | wincmd p | vertical new | wincmd r
  autocmd FileType gitcommit DiffGitCached | wincmd t | wincmd H | wincmd L
augroup END

if has("autocmd")
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif

endif

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" highlight current line
set cursorline

let mapleader=","

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-k> <C-w>k

map <Up> <C-w>-
map <Down> <C-w>+
map <Left> <C-w><
map <Right> <C-w>>

map <Leader>t :CtrlP<CR>
map <Leader><Leader>t :CtrlPClearCache<CR>:CtrlP<CR>

"Show line numbers
set number

" Map ,e to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%

color jellybeans

set guifont=Inconsolata-g:h14

" CTRLP customization
let g:ctrlp_working_path_mode = 0
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*.jpg,*/*.jpeg,*/*.png,*/*.coffee.js
" Ignore jasmine-headless-webkit cache
set wildignore+=*/.jhw-cache/*

" Execute per-folder vimrc files
set exrc
