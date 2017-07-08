if [ -f /etc/skel/.bashrc ]; then
	. /etc/skel/.bashrc
fi

dotfiles="$HOME/dotfiles"
if [ -f $dotfiles/uecwireless.sh ]; then
	. $dotfiles/uecwireless.sh
fi

if [ "$(uname -o)" = "Cygwin" ]; then
	source $HOME/dotfiles/base16-monokai-mod.minttyrc
fi
