# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR=vim
export GOROOT=/usr/local/go
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home
export ANDROID_HOME=/Users/oooo/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/oooo/Library/Android/sdk
export GOPATH=$HOME/go

alias tmux="tmux -2"

export GO111MODULE=on
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.linkerd2/bin
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize
export LC_ALL=en_US.UTF-8

# local exports
export EDITOR='vim'
export KUBE_EDITOR="/usr/local/bin/vim"
export GO111MODULE=auto
export MANPATH="/usr/local/man:$MANPATH"
export ZSH="/Users/oooo/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# plugins=(npm tmux terraform npx nvm node man git-flow gitignore git-prompt vscode git osx dnf brew colorize docker docker-compose docker-machine vagrant golang git-flow kubectl tmux zsh-syntax-highlighting zsh-autosuggestions)
plugins=(npm npx man gitignore tmux terraform vscode git brew colorize git-flow zsh-syntax-highlighting zsh-autosuggestions colorize docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

DEFAULT_USER=$(whoami)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh


export PATH="/usr/local/opt/mysql-client/bin:$PATH"
