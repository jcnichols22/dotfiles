# Alias definitions.
alias ll='ls -la'
alias la='ls -A'
alias cls='clear'

#system
alias update='sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'

#system information
sinfo() {
  echo "System Information:"
  echo "-------------------"
  echo "Hostname: $(hostname)"
  echo "Uptime: $(uptime -p)"
  echo "Kernel: $(uname -r)"
  echo "OS: $(lsb_release -d 2>/dev/null | cut -f2 || grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
  echo "Memory: $(free -m | awk '/^Mem:/ {print $2 \" MB\"}')"
  echo "Memory: $(free -g | awk '/^Mem:/ {print $2 \" GB\"}')"
  echo "Disk Usage: $(df -h / | awk 'NR==2 {printf \"Size: %s, Free: %s, Used: %s\", \$2, \$4, \$5}')"
  echo "Primary Local IP: $(hostname -I | awk '{print $1}')"
}


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
alias pullans='/home/josh/Documents/code/Ansible'

#tailscale
alias tsi='curl -fsSL https://tailscale.com/install.sh | sh'
alias ts='tailscale'
alias tsu='sudo tailscale up'
alias tsd='sudo tailscale down'
alias tsen='sudo tailscale set --exit-node=100.89.118.43'
alias tsud='sudo tailscale update'

#ssh 
alias spve='ssh 192.168.0.157'
alias spve1='ssh 192.168.0.23'
alias media='ssh 192.168.0.102'

