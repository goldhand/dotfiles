# This is used by cloud desktop instead of .bashrc

source /apollo/env/envImprovement/var/zshrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";


# Shell dot files specifically for cloud desktop
for file in $(ls ~/.cloudrc); do
	[ -r ~/.cloudrc/$file ] && [ -f ~/.cloudrc/$file ] && source ~/.cloudrc/$file;
done;
unset file;

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;


set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}


if [ -f ~/.zshrc-dev-dsk-post ]; then
    source ~/.zshrc-dev-dsk-post
fi


NO_TMUX=${NO_TMUX:-false}
echo 'shell: zsh'
echo "TMUX?"
if [ "$NO_TMUX" != true ]; then
    echo "Yes TMUX!";
 else
    echo "No TMUX";
fi
