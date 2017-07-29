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

function  skar
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh  -fCND 8888 salamjan@seoul
end

function  akar
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh -i ~/.ssh/aws.pem -fCND 8888 ubuntu@xiyali-aws
end



####################### initial ######################

function  gkar
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
  ssh -i ~/.ssh/gcs -fCND 8888 hiyali920@xiyali-gcs
end

function  kar-kill
  kill -9  (lsof -i :8888 |grep -i ssh |  awk '{print $2}' | uniq)
end

function  gshutv
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
  sshuttle -r hiyali920@xiyali-gcs 0.0.0.0/0 -vv -e "ssh -A -i /home/salamjan/.ssh/gcs" --dns
end

function  gshut
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
  sshuttle --dns -vDr hiyali920@xiyali-gcs 0.0.0.0/0 -e "ssh -A -i /home/salamjan/.ssh/gcs"
end

function shut-kill
  kill -9 (ps -ef | grep -i '\-\-dns' | awk '{print $2}' | uniq)
end



alias tmux="env TERM=screen-256color-bce tmux"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=https://npm.taobao.org/dist \
	--userconfig=$HOME/.cnpmrc"

alias vim="nvim"
alias vi="nvim"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

########################### initial done ############################


alias clip='xclip -sel clip'
export NVIM_TUI_ENABLE_TRUE_COLOR=1

set -gx MAVEN_OPTS "-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=8888"
set -gx BOOT_JVM_OPTIONS "-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=8888"


# #######################
# for oh-my-fish
# #######################

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

