# This is used by cloud desktop instead of .bashrc

source /apollo/env/envImprovement/var/zshrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Add `$HOME/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";


# Shell dot files specifically for cloud desktop
for file in $(ls $HOME/.cloudrc); do
	[ -r $HOME/.cloudrc/$file ] && [ -f $HOME/.cloudrc/$file ] && source $HOME/.cloudrc/$file;
done;
unset file;

if [ -f $HOME/.zshrc-dev-dsk-post ]; then
    source $HOME/.zshrc-dev-dsk-post
fi


NO_TMUX=${NO_TMUX:-false}
echo 'shell: zsh'
echo "TMUX?"
if [ "$NO_TMUX" != true ]; then
    echo "Yes TMUX!";
 else
    echo "No TMUX";
fi
