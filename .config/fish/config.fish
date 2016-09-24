# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/salamjan/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Path to Oh My Fish install.
### set -gx OMF_PATH "/home/salamjan/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/salamjan/.config/omf"

# Load oh-my-fish configuration.
### source $OMF_PATH/init.fish

# set -gx JAVA_HOME /work/zulu8.15.0.1-jdk8.0.92-linux_x64
set -gx JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64/

set -gx PATH $JAVA_HOME/bin \
        /usr/ \
        /usr/bin \
        /ENV/gradle-3.1/bin \
        $PATH \
        ~/.config/composer/vendor/bin

        # /ENV/android-sdk-linux \
        # /ENV/android-sdk-linux/tools \
        # /ENV/android-sdk-linux/platform-tools \
        # /ENV/android-sdk-linux/build-tools/23.0.0/ \
        # $HOME/vuze \
## set -gx ANDROID_HOME /ENV/android-studio/ /work/android-studio/bin/
# set -gx ANDROID_HOME /ENV/android-sdk-linux/


### alias nautilus='nautilus --no-desktop &'

function  kar
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh  -fCND 8888 salamjan@seoul
end

function  xkar
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh -i ~/.ssh/amazon.pem -fCND 8888 ubuntu@xiyali-aws
end

alias clip='xclip -sel clip'


alias tmux="env TERM=screen-256color-bce tmux"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc"

alias vim="nvim"
alias vi="nvim"


set -gx MAVEN_OPTS "-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=8888"
set -gx BOOT_JVM_OPTIONS "-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=8888"

export NVIM_TUI_ENABLE_TRUE_COLOR=1

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# #######################
# for oh-my-fish
# #######################
#

#
#
# Path to your oh-my-fish.
### set -g OMF_PATH $HOME/.local/share/omf
#
# # Path to your oh-my-fish configuration.
### set -g OMF_CONFIG $HOME/.config/omf
#
# fish_vi_mode
### set --export EDITOR "vim"
#
#
# ### Configuration required to load oh-my-fish ###
# # Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# # For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# # to create a custom plugin instead.
#
# # Load oh-my-fish configuration.
### source $OMF_PATH/init.fish
#
# Theme bobthefish
