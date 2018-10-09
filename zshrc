source ~/dotfiles/github/zgen/zgen.zsh

# Check if no init script
if ! zgen saved; then
	echo "Creating zgen save"

	zgen prezto

	#Plugins
	#zgen oh-my-zsh plugins/git
	#zgen oh-my-zsh plugins/sudo
	#zgen oh-my-zsh plugins/command-not-found

	#Completions
    zgen load zsh-users/zsh-autosuggestions
    
    #Highlight and suggestions
    zgen load zsh-users/zsh-syntax-highlighting

	#Themes

    # Miscellaneous
    zgen load marzocchi/zsh-notify
    zgen load psprint/zsh-navigation-tools
    zgen load psprint/zsh-cmd-architect

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

# Yubi SSH
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye

# Pyenv
export PYENV_ROOT="$HOME/dotfiles/github/pyenv"

# Bootstrap path
export PATH=~/.local/bin:~/dotfiles/bin:$PYENV_ROOT/bin:${PATH}

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

# Pyenv autocompletion
eval "$(pyenv init -)"

# Load local settings
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
