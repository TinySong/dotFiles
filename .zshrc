# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#sys_info=`uname -a | awk '{print $1}'`
sys_info=`uname`
#sys_info=`head -n 1 /etc/issue | awk '{print $1}'`

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
#ZSH_THEME="bureau"
#ZSH_THEME="amuse"
#ZSH_THEME="powerline"
ZSH_THEME="half-life"
#ZSH_THEME="awesomepanda"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(ubuntu sudo bash-autocompletion rsync cp adb git github python virtualenv go nyan)
# autoenv

plugins=(autojump  bash-autocompletion screen rsync cp copyfile kate copydir
         git github gitignore git-flow
         python pip
         go golang docker osx
		 kubectl nyan terminitor screen emoji-clock
         brew tmux  macports history tig wd
         # themes battery geeknote
         )

# User configuration
autoload -U compinit
compinit
export MANPATH="/usr/local/man:$MANPATH"

#if [ "$sys_info" = "Ubuntu" ];then
#else
#    export GOROOT=""
#    export GOPATH=""
#fi
export GOROOT="$HOME/development/go"
export GOPATH="$HOME/development/golang"
export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOROOT/bin:$GOPATH/bin:/opt/local/bin
export PATH="/Users/song/.cask/bin:$PATH"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8 export LC_CTYPE=zh_CN.UTF-8 # Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

fortune | cowsay -f default.cow
[[ -s /home/song/.autojump/etc/profile.d/autojump.sh ]] && source /home/song/.autojump/etc/profile.d/autojump.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
alias vi='vim'

alias scp='nocorrect scp'
# linum mount hfs file system
alias mac_hfs="sudo mount -t hfsplus -o force,rw /dev/sdc2 /media/`whoami`/mac_meachine"
# man page highlight
# export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
# export LESS_TERMCAP_me=$'\E[0m'           # end mode
# export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
# export LESS_TERMCAP_ue=$'\E[0m'           # end underline
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

if [ "$sys_info" = "Darwin" ];then
    alias up-hosts="wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -qO /tmp/hosts && echo \"get end ...\" && sudo mv /tmp/hosts /etc/hosts && echo \"Up ok ...\" && echo -e \"192.168.1.200 wiki.tenxcloud.com/\n192.168.1.210 jira.tenxcloud.com/\n192.168.1.103 enterprise.tenxcloud.com\" >> /etc/hosts"
else
    alias up-hosts="wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -qO /tmp/hosts && echo \"get end ...\" && mv /tmp/hosts /etc/hosts && echo \"Up ok ...\""
fi
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias wh="curl http://wttr.in"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias inip="~/.internalip"
alias top="htop"
alias grep="rg"
pidportfunction() {
	lsof -n -i4TCP:$1 | grep LISTEN
}
alias pidport=pidportfunction
alias docker-pid="sudo docker inspect --format '{{.State.Pid}}'" // PID
alias docker-ip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'" // IP
