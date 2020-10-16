ZSH_THEME="robbyrussell"
autoload colors zsh/terminfo
colors
precmd() { print "" }
PS1=""
RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"
setopt auto_cd
if [[ ! -f ~/.antigen.zsh ]]; then
	curl -L git.io/antigen > antigen.zsh
fi
source ~/.antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
