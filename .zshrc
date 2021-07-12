# This is used by cloud desktop instead of .bashrc
source /apollo/env/envImprovement/var/zshrc
source $HOME/.zsh_secrets

# Source required dotfiles first (they will be sourced again after common dot files)
source $HOME/.cloudrc/path
source $HOME/.cloudrc/exports

# Source common dot files
source $HOME/.aliases
source $HOME/.functions

# Shell dot files specifically for cloud desktop
# After common dot files for overrides
for file in $(ls $HOME/.cloudrc); do
	[ -r $HOME/.cloudrc/$file ] && [ -f $HOME/.cloudrc/$file ] && source $HOME/.cloudrc/$file;
done;
unset file;

if [ -f $HOME/.zshrc-dev-dsk-post ]; then
	source $HOME/.zshrc-dev-dsk-post
fi
