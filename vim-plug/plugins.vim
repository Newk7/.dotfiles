" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/nerdtree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Gruvbox theme
    Plug 'morhetz/gruvbox'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " vim-airline
    Plug 'vim-airline/vim-airline'
    " Nerd tree with extra
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    " snippets
    Plug 'honza/vim-snippets'
    
    " Lan Client
    "Plug 'autozimu/LanguageClient-neovim', {
    "  \ 'branch': 'next',
    "  \ 'do': 'bash install.sh',
    " \ }
    "" Type Script
    "Plug 'leafgarland/typescript-vim'
    "Plug 'peitalin/vim-jsx-typescript'

    "" Javascript 
    "Plug 'pangloss/vim-javascript'
    " ### GOLANG PLUGS ###
    "Plug 'fatih/vim-go'
    " ### Python Plugs ###
    " Jedi-Vim For Python Completion 
    "Plug 'davidhalter/jedi-vim'

call plug#end()

colorscheme gruvbox

" open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

highlight! link NERDTreeFlags NERDTreeDir

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }
