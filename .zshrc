
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Fixes something with permissions.
ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/joshuareed/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
   git
   colorize
   common-aliases
   virtualenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='mvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -Uz compinit
compinit -i

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Workfront required export
if [ -d "/Users/joshuareed/dev/AtTaskDoc" ]; then export ATTASK_DOC_HOME="/Users/joshuareed/dev/AtTaskDoc"; fi
export ATTASK_LAST=reed
export ATTASK_FIRST=joshua
export ATTASK_USER=joshuareed
export SPRING_PROFILES_ACTIVE=dev,development
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.10.jdk/Contents/Home
export MAVEN_OPTS='-Xmx2048m -Xms2048m -XX:MaxPermSize=2048m'
export PATH=$JAVA_HOME/bin:$PATH

# QA Pytest 
eval "$(pipenv --completion)"
eval "$(pyenv init -)"
export PATH="$PATH:/Users/joshuareed/.local/bin"
# export PATH="$/usr/local/bin/pyenv/shims:$PATH"

# Alias list
alias -g and='&&'

# RR-kamino build
alias buildK="yarn && yarn build:dev && say 'RedRock Kamino Done'"
alias buildA="yarn && yarn build:dev && yalc push && say 'Agile Done'"

alias agile_kamino="cd ~/dev/front-end/agile/ && buildA && cd ~/dev/web-application/redrock-kamino/ && buildK && say 'build complete' && cd ~/dev/front-end/agile;"

alias c="clear"
alias vimzsh="vi ~/.zshrc"
alias vimrc="vi ~/.vimrc"

alias -g N='| ln'

alias -g G='| grep -i'
alias ls="ls -lh"
alias ll="la"
alias sourcezsh='source ~/.zshrc'

# Say commands
alias -g Done='; say "You are amazing! Keep up the good work!"'

# Yalc alias
alias ypush='yalc push'
alias yshow='yalc installations show'
alias yclean='yalc installations clean'
alias yremove='yalc remove'
alias yremoveAll='yalc remove --all'

# Lets you search any Node_modules for a linked file.
function linked(){
   if [ "$1" != "" ]
   then
      ls -lahG ./node_modules/\@"$1"
   else
      echo "Which link are you looking for?"
   fi
}

# Mvn of things. I don't want to learn the MVN Zsh plugin.
alias mvncleaninstall='mvn clean install -U -DskipTests'

# Auto ls when chaining directories.
chpwd() {
   l -G
}

# Workfront Dev Server
alias wfs='wf dev-server restart'
