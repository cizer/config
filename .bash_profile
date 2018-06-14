#!/bin/sh
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/richiemackay/.sdkman"
[[ -s "/Users/richiemackay/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/richiemackay/.sdkman/bin/sdkman-init.sh"
