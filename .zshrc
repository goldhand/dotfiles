# This is used by cloud desktop instead of .bashrc

source /apollo/env/envImprovement/var/zshrc


# Add `$HOME/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Shell dot files specifically for cloud desktop
source $HOME/.cloudrc/path
source $HOME/.cloudrc/exports
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
