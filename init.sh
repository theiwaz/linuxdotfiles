sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh neovim #ag
sudo apt install fonts-firacode
curl -L git.io/antigen > antigen.zsh
chsh -s /usr/bin/zsh 

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null
mkdir -p ~/.config ~/.config/nvim

# Pluginmanager for vi.m
curl  ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
ln -s ~/linuxdotfiles/zshrc ~/.zshrc
ln -s ~/linuxdotfiles/tmux.conf ~/.tmux.conf
ln -s ~/linuxdotfiles/vimrc ~/.config/nvim/init.vim
ln -s ~/linuxdotfiles/vimrc ~/.vimrc
ln -s ~/linuxdotfiles/antigen.zsh ~/.antigen.zsh
