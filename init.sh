# Update apt
sudo apt-get update
sudo apt-get upgrade

# Install utils
sudo apt-get install zsh \
  neovim \
  ripgrep \
  zoxide \
  tmux \
  fonts-powerline  \
  lua5.4 luarocks \
  python3-venv \ # for the python-lsp-server 
  build-essential \ 
  curl \
  unzip \
  git \
  ripgrep

sudo apt install fonts-firacode
curl -L git.io/antigen > antigen.zsh
chsh -s /usr/bin/zsh 

# Download NeoVim, zshrc cotains adding to path declaration 
sudo curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null
mkdir -p ~/.config 

# Pluginmanager for vi.m
curl  ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# TMUX plugin manager 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create sim links for dotfile referencing them in my linuxdotfile directory
ln -s ~/linuxdotfiles/zshrc ~/.zshrc
ln -s ~/linuxdotfiles/tmux.conf ~/.tmux.conf
ln -s ~/linuxdotfiles/vimrc ~/.config/nvim/init.vim
ln -s ~/linuxdotfiles/vimrc ~/.vimrc
ln -s ~/linuxdotfiles/antigen.zsh ~/.antigen.zsh
ln -s ~/linuxdotfiles/nvim ~/.config/nvim
ln -s ~/linuxdotfiles/yazi ~/.config/yazi

source ./install-yazi.sh
source ./install-rust.sh
source ./install-dotnet.sh





