#
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# ZSH Config File by Zachary Keyes

### Prompt Appearance

# Load Version Control System into Prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Set PROMPT variable
setopt PROMPT_SUBST
PROMPT='%B%F{green}[%n]%f %F{red}%~%f%F{blue}${vcs_info_msg_0_}%f
$ '


# Prompt Appearance
setopt PROMPT_SUBST
PROMPT='%B%F{green}[%n]%f %F{red}%~%f%F{blue}${vcs_info_msg_0_}%f
%K{maroon}$ %k'

### Set inputs and input-related variables
set completion-ignore-case on
set show-all-if-ambiguous on

### Set environment variables
export PATH="/usr/local/bin:/usr/bin:/bin:/user/sbin:/sbin"
export PATH="/usr/local/Cellar/openvpn/2.5.7/sbin/:$PATH"	# Add ProtonVPN to PATH
export DOTFILES="$HOME/.dotfiles"
export PATH="$DOTFILES:$PATH"		# Add dotfiles to PATH
export EDITOR="/usr/bin/vim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"	# Syntax highlighting for man pages with bat
export XDG_CONFIG_HOME="$DOTFILES"

### Aliases
alias q="exit"
alias l="ls -la"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ll="ls -l"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"	# Fuck you MacOS

alias gstat='git status'
alias gcomm='git commit'
alias gpull='git pull'
alias gpush='git push'
alias gadd='git add'
alias gaddam='git add -am'

### Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function get_pwd() {
  echo "${PWD/$HOME/~}"
}

