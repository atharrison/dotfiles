source ~/.bashrc

# Ruby rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


######## Old stuff below, might later be useful ######

# Java SDKMAN
# #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/a/.sdkman"
# [[ -s "/Users/aharrison1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/aharrison1/.sdkman/bin/sdkman-init.sh"

# Java .jenv
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# Ruby stuff
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git Bash Completion
#  brew install git bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

