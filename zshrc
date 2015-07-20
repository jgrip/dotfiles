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

# Debian settings
export DEBEMAIL=ogun@ogun.org
export DEBFULLNAME=Johan Grip


