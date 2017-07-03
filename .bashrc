if [ -f /etc/skel/.bashrc ]; then
	. /etc/skel/.bashrc
fi

dotfiles="$HOME/dotfiles"
if [ -f $dotfiles/uecwireless.sh ]; then
	. $dotfiles/uecwireless.sh
fi
