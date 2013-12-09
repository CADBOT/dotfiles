# Activate all plugins
set pluginDir $HOME/.config/fish/plugins
for plugin in (ls $pluginDir)
  . $pluginDir/$plugin
end

# Custom prompt (includes stuff for vi-mode)
function fish_prompt -d "Write out the prompt"
        printf '%s@%s%s%s%s [%s]> ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) $vi_mode
end

# No greeting (for now...)
set fish_greeting

# Path setup
# Add rbenv
set fish_user_paths $fish_user_paths $HOME/.rbenv/bin
. (rbenv init -|psub)
# Swap caps and ESC
setxkbmap -option caps:swapescape

# Work computer specific (Ubuntu)
if [ (hostid) = "007f0101 " ]
  # Kaiju is only useful at work for now.
  set fish_user_paths $fish_user_paths $HOME/kaiju/bin
end

# Simple alias' that don't warrent a function
alias apt-get=apt-get -y
alias vi=vim
