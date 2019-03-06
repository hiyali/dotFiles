# ============== Setting
# export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
# - OMF
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"
# - Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# ============== Docker & VM
set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/salamhiyali/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
# - Go
set PATH $PATH /usr/local/go/bin
# - Sqlite
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
# - Android
set PATH $PATH /Users/salamhiyali/Library/Android/sdk/platform-tools
export PATH

# ============== Aliases
# - nvim
alias vi="nvim"
alias vim="nvim"
# - npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"
# - tmux
alias tmux="env TERM=screen-256color-bce tmux"

# ============== Personally free network
# - Google
function ssh-gcs-hiyali
  ssh-conn-shutdown
  ssh -i ~/.ssh/hiyali-gcs -fCND 5555 hiyali920@hiyali-gcs
end
# - Amazon
function ssh-acs-pomm
  ssh-conn-shutdown
  ssh -i ~/.ssh/acs.pem -fCND 5555 ubuntu@pomm-acs
end
# - shutdown
function ssh-conn-shutdown
  kill -9 (lsof -i :5555 | grep -i ssh | awk '{print $2}' | uniq)
end
# - for Git
function git-proxy
  git config --global http.proxy socks5h://127.0.0.1:5555
  git config --global https.proxy socks5h://127.0.0.1:5555
end
function git-proxy-clear
  # git config --global --unset http.proxy
  # git config --global --unset https.proxy
  git config --global --remove-section https
  git config --global --remove-section http
end
# - Sshuttle all proxy
function shut-gcs-hiyali
  shut-conn-shutdown
  sshuttle --dns -vDr hiyali920@hiyali-gcs 0/0 -e "ssh -A -i ~/.ssh/hiyali-gcs"
end
function shutv-gcs-hiyali
  shut-conn-shutdown
  sshuttle --dns -r hiyali920@hiyali-gcs 0/0 -vv -e "ssh -A -i ~/.ssh/hiyali-gcs"
end
function shut-conn-shutdown
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
end

# Testing
set proxyAddress 127.0.0.1:5555
export http_proxy=$proxyAddress
export https_proxy=$proxyAddress
export HTTP_PROXY=$proxyAddress
export HTTPS_PROXY=$proxyAddress


