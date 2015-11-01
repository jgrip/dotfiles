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
    
    #Highlight and suggestions
    zgen load zsh-users/zsh-syntax-highlighting

	#Themes

	#Save 
	zgen save
fi

# Enable auto suggestions
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init

# Load promptline
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    source ~/dotfiles/zsh/promptline-snapshot-ssh
else
    source ~/dotfiles/zsh/promptline-snapshot
fi

# Bootstrap path
export PATH=~/.local/bin:~/dotfiles/bin:${PATH}

# Debian settings
export DEBEMAIL=ogun@ogun.org
export DEBFULLNAME=Johan Grip

# Terminal settings
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# MC skin
export MC_SKIN=~/dotfiles/github/mc-solarized-skin/solarized.ini

# Aliases
alias gfo='git fetch origin'
alias gmom='git merge origin/master'

# If we have neovim, use it
[ -f ~/.local/bin/nvim ] && alias vim=nvim

# Load local settings
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
