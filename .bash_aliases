# aliases
## utility
alias sudo='sudo -E'
alias tmux='TERM=xterm-256color tmux'

## 個人的なもの
alias giraph='hadoop\
	jar ${GIRAPH_HOME}/giraph-core/target/giraph-1.2.0-SNAPSHOT-for-hadoop-1.2.1-jar-with-dependencies.jar\
	org.apache.giraph.GiraphRunner'

alias pbcopy='xsel --clipboard --input'
alias latexmkpvc='latexmk -pvc'

alias gt='gotrans'
alias view='nvim -R'

alias cmake='make -f ~/dotfiles/Makefile_C'
