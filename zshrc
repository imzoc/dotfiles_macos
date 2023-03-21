echo "Hello from zshrc!"

### Set inputs and input-related variables
set completion-ignore-case on
set show-all-if-ambiguous on

# Inputs
"\e[Z": menu-complete
"\e[A": history-search-backward
"\e[B": history-search-forward

### Set environment variables
export PATH="/usr/local/bin:/usr/bin:/bin:/user/sbin:/sbin"
export PATH="/usr/local/Cellar/openvpn/2.5.7/sbin/:$PATH"	# Add ProtonVPN to PATH
export DOTFILES="$HOME/.dotfiles"
export PATH="$DOTFILES:$PATH"		# Add dotfiles to PATH
export EDITOR="/usr/bin/vim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"	# Syntax highlighting for man pages with bat

### Aliases
alias l="ls -la"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"	# Fuck you MacOS

### Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
