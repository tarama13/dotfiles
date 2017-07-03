#!/bin/bash
proxy_server="proxy.uec.ac.jp"
proxy_port="8080"
if [ `iwgetid -r` = "UECWireless" ]; then
	export http_proxy="http://$proxy_server:$proxy_port/"
	export https_proxy="https://$proxy_server:$proxy_port/"
	export ftp_proxy="http://$proxy_server:$proxy_port/"
	echo -e "\
[http]\n\
	proxy = http://$proxy_server:$proxy_port/\n\
[https]\n\
	proxy = https://$proxy_server:$proxy_port/\n\
[url \"https://\"]\n\
	insteadOf = git://" > ~/.gitconfig_proxy
else
	unset http_proxy
	unset https_proxy
	echo "" > .gitconfig_proxy
fi
