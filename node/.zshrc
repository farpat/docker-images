export ZSH="/home/app/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=()

source $ZSH/oh-my-zsh.sh

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
