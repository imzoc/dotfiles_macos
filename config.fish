#!/usr/bin/env fish
if status is-interactive
    # Commands to run in interactive sessions can go here

    # Various binary paths
    set -x PATH "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    set -x PATH "/usr/local/lib/python3.11/pip:$PATH"
    
    # Add path for Rust and Cargo installed by Rustup
    set -x PATH "$HOME/.cargo/bin:$PATH"

    set -x EDITOR vim
    set -x EDITOR 'brave'

    alias vimrc 'vim ~/.vimrc'
    alias fishrc 'vim ~/git/imzoc/dotfiles/config.fish'
    alias gst 'git status'
    alias gpush 'git push'
    alias gpull 'git pull'

    # Overwriting aliases
    alias ls 'lsd'
    source (brew --prefix)/Cellar/chruby-fish/1.0.0/share/fish/vendor_functions.d/chruby.fish
    source (brew --prefix)/Cellar/chruby-fish/1.0.0/share/fish/vendor_conf.d/chruby_auto.fish
    chruby ruby-3.1.3
    
    function ll
        ls -lh $argv
    end

    function sync_dotfiles
        pushd ~/git/imzoc/dotfiles
            git add .
            git commit -m "Adding latest dotfile changes"
            git pull
            git push
        popd
    end

    # Starship.rs
    starship init fish | source

end
