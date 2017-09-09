# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# Github
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/Oli
# virtualenv
export WORKON_HOME=~/Env
export VIRTUALENVWRAPPER_PYTHON=/bin/python3.6
source /usr/bin/virtualenvwrapper.sh
