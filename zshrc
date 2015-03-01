source ~/dotfiles/github/antigen/antigen.zsh

# Bootstrap path
export PATH=~/dotfiles/bin:${PATH}

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
. ~/dotfiles/github/powerline/powerline/bindings/zsh/powerline.zsh
#
# Tell antigen that you're done.
antigen apply
