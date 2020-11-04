# Get homebrew going
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

##### Create Dirs #####
mkdir -p ~/work
mkdir -p ~/projects/

##### Run Installs #####

# Golang
curl -o golang.pkg https://dl.google.com/go/go1.14.2.darwin-amd64.pkg
sudo open golang.pkg

# Python
brew install python3
python3 -m pip install pynvim

# Install Iterm2
brew cask install iterm2

# Install zsh and oh-my-zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Misc installs
brew install git
brew install fzf
brew install ripgrep
brew install the_silver_searcher
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install fd
brew install node
brew install yarn
brew install tmux

# NeoVim
brew install neovim
