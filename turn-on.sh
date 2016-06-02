#! /bin/bash
cd ~/Dropbox/src/gamell-lifx
if test -f ~/.rvm/scripts/rvm; then
    [ "$(type -t rvm)" = "function" ] || source ~/.rvm/scripts/rvm
fi
ruby ./turn-on.rb