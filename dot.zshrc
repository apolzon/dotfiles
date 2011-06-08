## Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim
export SHELL=/bin/zsh
export DISABLE_AUTO_TITLE=true
#bindkey "\e[A"  history-beginning-search-backward
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="apples"
#export ZSH_THEME="arrow"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
set -o vi
alias mysql-start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql-stop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias redis-start='redis-server /usr/local/etc/redis.conf'
alias banyan-worker='echo -n -e "\033]0;Banyan Worker\007"; cd ~/dev/banyan; `cat ./script/resque.sh`'
alias banyan-worker-online='echo -n -e "\033]0;Banyan Worker Online\007"; cd ~/dev/banyan; BANYAN_ENV=apples `cat ./script/resque.sh`'
alias cypress-worker='echo -n -e "\033]0;Cypress Worker\007"; cd ~/dev/cypress; ./script/resque.sh'
alias cypress-server='echo -n -e "\033]0;Cypress Server\007"; cd ~/dev/cypress; rails s'
alias redwood-server='echo -n -e "\033]0;Redwood Server\007"; cd ~/dev/redwood; rails s -p 3001'
alias redwood-worker='echo -n -e "\033]0;Redwood Worker\007"; cd ~/dev/redwood; ./script/resque.sh'
alias git-pull='git checkout master; git pull; git checkout dev; git rebase master;'
alias git-push='git checkout master; git merge dev; git push origin master; git checkout dev'
alias gst='git status'
alias gco='git checkout'
alias grebase='git checkout master && git pull && git checkout - && git rebase master'

git-unpushed() {
  git log origin/$@..HEAD
}

# Start Christian config

alias screen='screen -A -h 16000 -e^Zz'
alias screenx='screen -x'
alias more='less'
alias clearcache='dscacheutil -flushcache'


export PATH=/usr/local/Cellar/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH

# RVM
if [[ -s /Users/capolzon/.rvm/scripts/rvm ]] ; then source /Users/capolzon/.rvm/scripts/rvm ; fi

      hitch() {
        command hitch "$@"
        if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
      }
      alias unhitch='hitch -u'
      # Uncomment to persist pair info between terminal instances
      hitch






#autojump
#Copyright Joel Schaerer 2008, 2009
#This file is part of autojump

#autojump is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#autojump is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with autojump.  If not, see <http://www.gnu.org/licenses/>.

#local data_dir=${XDG_DATA_HOME:-$([ -e ~/.local/share ] && echo ~/.local/share || echo ~)}
local data_dir=$([ -e ~/.local/share ] && echo ~/.local/share || echo ~)
if [[ "$data_dir" = "${HOME}" ]]
then
    export AUTOJUMP_DATA_DIR=${data_dir}
else
    export AUTOJUMP_DATA_DIR=${data_dir}/autojump
fi
if [ ! -e "${AUTOJUMP_DATA_DIR}" ]
then
    mkdir "${AUTOJUMP_DATA_DIR}"
    mv ~/.autojump_py "${AUTOJUMP_DATA_DIR}/autojump_py" 2>>/dev/null #migration
    mv ~/.autojump_py.bak "${AUTOJUMP_DATA_DIR}/autojump_py.bak" 2>>/dev/null
    mv ~/.autojump_errors "${AUTOJUMP_DATA_DIR}/autojump_errors" 2>>/dev/null
fi

function autojump_preexec() {
    { (autojump -a "$(pwd -P)"&)>/dev/null 2>>|${AUTOJUMP_DATA_DIR}/.autojump_errors ; } 2>/dev/null
}

typeset -ga preexec_functions
preexec_functions+=autojump_preexec

alias jumpstat="autojump --stat"

function j { local new_path="$(autojump $@)";if [ -n "$new_path" ]; then echo -e "\\033[31m${new_path}\\033[0m"; cd "$new_path";fi }

source $HOME/.rake_completion.zsh
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
