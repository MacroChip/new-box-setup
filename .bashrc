export JAVA_HOME=/usr/lib/jvm/java-8-oracle
alias rs='java -jar ~/Downloads/OSBuddy.jar'
alias docker='sudo docker'
PATH=$PATH:~/.scripts:~/code/idea-IC-162.2032.8/bin:~/code/android-studio/bin:~/Android/Sdk/platform-tools
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \D{%T}\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
ANDROID_HOME=$HOME/Android/Sdk

function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
