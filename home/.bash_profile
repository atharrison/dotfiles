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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrewharrison/google-cloud-sdk/path.bash.inc' ]; then . '/Users/andrewharrison/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrewharrison/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/andrewharrison/google-cloud-sdk/completion.bash.inc'; fi
