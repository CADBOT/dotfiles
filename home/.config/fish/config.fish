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
# Add RVM
set fish_user_paths $fish_userpaths $HOME/.rvm/bin

# Work computer specific
if [ (hostid) = "3d0ae128" ]
  # Dumb hack to get rvm working properly
  rvm list
end

# Swap caps and ESC
setxkbmap -option caps:swapescape
