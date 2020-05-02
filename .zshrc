autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'

PROMPT='%~ %n$ '

# ブランチ名を色付きで表示させるメソッド
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH=~/.nodebrew/current/bin:/usr/local/bin:$PATH:/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home/bin
export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home
