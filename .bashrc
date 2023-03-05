# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls -F --color=never'
# history-search
# 上矢印キー
bind '"\e[A": history-search-backward'
# 下矢印キー
bind '"\e[B": history-search-forward'

export LANG=ja_JP.UTF-8
export EDITOR=vim

##for ssh-agent
##有効時間（好きな秒数に設定)
#SSH_KEY_LIFE_TIME_SEC=3600
#SSH_AGENT_FILE=$HOME/.ssh-agent
#test -f $SSH_AGENT_FILE && source $SSH_AGENT_FILE > /dev/null 2>&1
#if [ $( ps auxww|grep ssh-agent|grep -v grep|awk '{print $1}'|grep `whoami` | wc -l ) -eq 0 ]; then
#    ssh-agent -t $SSH_KEY_LIFE_TIME_SEC > $SSH_AGENT_FILE
#    source $SSH_AGENT_FILE > /dev/null 2>&1
#fi

# 言語の設定をまるっと記載
export LANG=ja_JP.utf8
export LC_CTYPE="ja_JP.utf8"
export LC_NUMERIC="ja_JP.utf8"
export LC_TIME="ja_JP.utf8"
export LC_COLLATE="ja_JP.utf8"
export LC_MONETARY="ja_JP.utf8"
export LC_MESSAGES="ja_JP.utf8"
export LC_ALL=ja_JP.utf8

# for gitbash
#export MSYS=winsymlinks:nativestrict
#export PS1='\[\033];$TITLEPREFIX:$PWD \007\]\n\[`__git_ps1`\] $PWD\n$ '

