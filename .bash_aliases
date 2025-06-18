# Alias definitions.
alias ll='ls -la'
alias la='ls -A'
alias cls='clear'

#ssh
alias ssha='eval $(ssh-agent) && ssh-add'

#git aliases
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'

#tailscale
alias ts='tailscale'
alias tsu='sudo tailscale up'
alias tsd='sudo tailscale down'
alias tsen='sudo tailscale set --exit-node=100.89.118.43'
alias tsud='sudo tailscale update'

#ssh 
alias spve='ssh 192.168.0.157'
alias spve1='ssh 192.168.0.23'
alias media='ssh 192.168.0.102'
