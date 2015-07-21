source ~/dotfiles/github/zgen/zgen.zsh

# Check if no init script
if ! zgen saved; then
	echo "Creating zgen save"

	zgen oh-my-zsh

	#Plugins
	#zgen oh-my-zsh plugins/git
	#zgen oh-my-zsh plugins/sudo
	#zgen oh-my-zsh plugins/command-not-found

	#Completions

	#Themes

	#Save 
	zgen save
fi

# Load promptline
source ~/dotfiles/zsh/promptline-snapshot

# Bootstrap path
export PATH=~/dotfiles/bin:${PATH}

[ -d ~/bin ] && export PATH=~/bin:${PATH}

# Debian settings
export DEBEMAIL=ogun@ogun.org
export DEBFULLNAME=Johan Grip

# Terminal settings
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# Load local settings
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
