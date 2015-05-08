source ~/dotfiles/github/antigen/antigen.zsh

# Bootstrap path
export PATH=~/dotfiles/bin:${PATH}

# Debian settings
export DEBEMAIL=ogun@ogun.org
export DEBFULLNAME=Johan Grip

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
#
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
#
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
#
# Load the theme.
antigen bundle nojhan/liquidprompt
#
# Tell antigen that you're done.
antigen apply
