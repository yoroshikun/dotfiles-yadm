# editor
set -x EDITOR nvim

# paths
source "$HOME/.config/fish/paths.fish"

# open default editor
alias e $EDITOR

# update
alias fish-update-all "~/dotfiles/scripts/update.sh"

# direnv
eval (direnv hook fish)

# fzf
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden'

# font
set -g theme_nerd_fonts yes

# asdf
source ~/.asdf/asdf.fish

# add cargo
set PATH $HOME/.cargo/bin $PATH

# Go Development
set GOPATH $HOME/.go
set GOROOT (brew --prefix golang)/libexec
set PATH $GOPATH/bin:$GOROOT/bin $PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$USER/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/$USER/Downloads/google-cloud-sdk/path.fish.inc'; end

# Set the emoji width for iTerm
set -g fish_emoji_width 2

# Hide the fish greeting
set fish_greeting ""

# Use legacy fzf keybindings
set -g FZF_LEGACY_KEYBINDINGS 1

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# Init Starship
eval (starship init fish)
