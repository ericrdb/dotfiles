export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1;
export PATH=/opt/local/bin:/opt/local/sbin:/opt/subversion/bin:/usr/local/bin:/Applications/MAMP/bin/mysql:/Applications/MAMP/bin/php/php5.3.14/bin:/Applications/MAMP/bin/apache2:/Applications/MAMP/Library/bin:/usr/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages 

# Taken from http://github.com/twerth/dotfiles/blob/master/etc/bashrc
#
# Other aliases ----------------------------------------------------
alias ll='ls -hl'
alias la='ls -al'
alias lla='ls -lah'
alias l='LC_ALL=C ls -lah'

# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'

# Search -----------------------------------------------------------
alias g='grep -ri'  # Case insensitive grep
gns(){ # Case insensitive, excluding svn folders
  find . -path '*/.svn' -prune -o -type f -print0 | xargs -0 grep -I -n -e "$1"
}
alias f='find . -iname'

# Misc -------------------------------------------------------------
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder

# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
bind "set bell-style none" # no bell
bind "set show-all-if-ambiguous On" # show list automatically, without double tab

if [ "$OS" = "linux" ] ; then
    alias processes_all='ps -aulx'
else
    alias top='top -o cpu' # os x
fi
 
alias systail='tail -f /var/log/system.log'
alias m='more'
alias rak='rak -a'
 
alias df='df -h' # Show disk usage

# Shows most used commands, cool script I got this from: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"
 
[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh

# from a comment in http://hints.macworld.com/article.php?story=20080317085050719
#sed -e 's/^  *//' -e '/^#/d' -e 's/[, ].*//' -e '/\[/d' ~/.ssh/known_hosts | sort -u

# git bash completion
source ~/.git-bash-completion.sh
source ~/.bashrc_profile
