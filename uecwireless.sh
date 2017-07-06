#!/bin/bash
settingfile="$HOME/dotfiles/gitconfig_proxy"

set_proxy () {
	proxy_server="proxy.uec.ac.jp"
	proxy_port="8080"
	export http_proxy="http://$proxy_server:$proxy_port/"
	export https_proxy="https://$proxy_server:$proxy_port/"
	export ftp_proxy="http://$proxy_server:$proxy_port/"

	# Git
	echo -e "\
[http]\n\
	proxy = http://$proxy_server:$proxy_port/\n\
[https]\n\
	proxy = https://$proxy_server:$proxy_port/\n\
[url \"https://\"]\n\
	insteadOf = git://" > $settingfile
}

unset_proxy() {
	unset http_proxy
	unset https_proxy
	echo "" > $settingfile

}

if [ "$(uname -o)" = "GNU/Linux" ]; then
	if [ "$(iwgetid -r)" = "UECWireless" ]; then
		set_proxy
	else
		unset_proxy
	fi
fi

