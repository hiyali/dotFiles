# Path to Oh My Fish install.
set -gx OMF_PATH "/home/salamjan/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/salamjan/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -gx JAVA_HOME /work/zulu8.15.0.1-jdk8.0.92-linux_x64

set -gx PATH $PATH $JAVA_HOME/bin /lida/apps/vuze


alias nautilus='nautilus --no-desktop &'


function  goog
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh  -fCND 8888  yusup@lida
end

function  kar
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh  -fCND 8888 salamjan@seoul
end

alias clip='xclip -sel clip'


alias tmux="env TERM=screen-256color-bce tmux"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc"
alias vim="nvim"



# #######################
# for oh-my-fish
# #######################
#
set -gx MAVEN_OPTS "-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=8888"
set -gx BOOT_JVM_OPTIONS "-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=8888"
#
#
# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf
#
# # Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf
#
# fish_vi_mode
set --export EDITOR "vim"
#
#
# ### Configuration required to load oh-my-fish ###
# # Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# # For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# # to create a custom plugin instead.
#
# # Load oh-my-fish configuration.
source $OMF_PATH/init.fish
#
# Theme bobthefish
