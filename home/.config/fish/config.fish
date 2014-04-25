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
set fish_user_paths $fish_user_paths /opt/rbenv/bin
. (rbenv init -|psub)

# Work computer specific (Ubuntu)
if [ (hostid) = "007f0101" ]
  # Kaiju is only useful at work for now.
  set fish_user_paths $fish_user_paths $HOME/kaiju/bin
  set fish_user_paths $fish_user_paths /home/local/ANT/icharles/Desktop/AWSMACServiceRubyClient/bin
  set fish_user_paths $fish_user_paths /opt/AWS-ElasticBeanstalk-CLI-2.6.0/eb/linux/python2.7
  
end

# Simple alias' that don't warrent a function
alias apt-get=apt-get -y
alias vi=vim
alias c=clear
alias l=ls
alias s=ls
