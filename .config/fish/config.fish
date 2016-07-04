# Path to Oh My Fish install.
set -gx OMF_PATH "/home/salamjan/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/salamjan/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -gx JAVA_HOME /work/zulu8.13.0.5-jdk8.0.72-linux_x64

set -gx PATH $PATH $JAVA_HOME/bin /lida/apps/vuze


alias nautilus='nautilus --no-desktop &'


function  goog
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh  -fCND 8888  lora
end

function  kar
  kill -9  (lsof -i :5555 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh  -fCND 5555 salamjan@52.79.111.194
end

alias clip='xclip -sel clip'


alias tmux="env TERM=screen-256color-bce tmux"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc"
alias vim="nvim"
