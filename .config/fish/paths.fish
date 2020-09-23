# brew
set -g fish_user_paths $fish_user_paths '/usr/local/sbin'

# yarn
set -g fish_user_paths $fish_user_paths "(yarn global bin)/node_modules/.bin"

# platformsh
set -U fish_user_paths $fish_user_paths $HOME/.platformsh/bin
