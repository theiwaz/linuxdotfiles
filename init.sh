sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh neovim ag
sudo apt install fonts-firacode
curl -L git.io/antigen > antigen.zsh
chsh -s /usr/bin/zsh 
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null
mkdir -p ~/.config ~/.config/nvim

# Pluginmanager for vi.m
curl  ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/linuxDotfiles/zshrc ~/.zshrc
ln -s ~/linuxDotfiles/tmux.conf ~/.tmux.conf
ln -s ~/linuxDotfiles/vimrc ~/.config/nvim/init.vim
ln -s ~/linuxDotfiles/vimrc ~/.vimrc
