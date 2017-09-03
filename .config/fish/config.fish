
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


alias tmux="env TERM=screen-256color-bce tmux"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc"

alias vim="nvim"
alias vi="nvim"


function  gkar
  kill -9  (lsof -i :5555 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh -i ~/.ssh/gcs -fCND 5555 hiyali920@hiyali-gcs
end
function kar-kill
  kill -9  (lsof -i :5555 |grep -i ssh |  awk '{print $2}' | uniq)
end

function  gshut
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
  sshuttle --dns -vDr hiyali920@hiyali-gcs 0.0.0.0/0 -e "ssh -A -i ~/.ssh/gcs"
end
function  gshutv
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
  sshuttle -r hiyali920@hiyali-gcs 0.0.0.0/0 -vv -e "ssh -A -i ~/.ssh/gcs" --dns
end
function shut-kill
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
end




# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
