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
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Gruvbox theme
    Plug 'morhetz/gruvbox'
    " DevIcons 
    Plug 'ryanoasis/vim-devicons'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " vim-airline
    Plug 'vim-airline/vim-airline'  
    " snippets
    Plug 'honza/vim-snippets'
    
    " File Explorer
      " Plug 'preservim/nerdtree'
      " Nerd tree with extra
      " Plug 'Xuyuanp/nerdtree-git-plugin'
      " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
      " Plug 'airblade/vim-gitgutter'
    
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

