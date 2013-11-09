# Activate all plugins
set pluginDir $HOME/.config/fish/plugins
for plugin in (ls $pluginDir)
  . $pluginDir/$plugin
end

# Custom prompt (includes stuff for vi-mode)
function fish_prompt -d "Write out the prompt"
        printf '%s@%s%s%s%s [%s]> ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) $vi_mode
end
