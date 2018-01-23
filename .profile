# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi


# Hadoop and Giraph
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export HADOOP_PREFIX=/usr/local/hadoop
  # hadoop 1.2.1
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_PREFIX/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_PREFIX/lib"
export GIRAPH_HOME=/usr/local/giraph

## Hadoop classpath
CLASSPATH=$CLASSPATH:$HADOOP_PREFIX/hadoop-core-1.2.1.jar
for i in $HADOOP_PREFIX/lib/*.jar
do
  CLASSPATH=$CLASSPATH:$i
done
export CLASSPATH

## native library
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/lib/jvm/java-8-oracle/jre/lib/amd64/:$HADOOP_PREFIX/lib/native/Linux-amd64-64/

## hadoopだけで実行できるように
export PATH=$PATH:$HADOOP_PREFIX/bin


# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

shopt -s autocd
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
