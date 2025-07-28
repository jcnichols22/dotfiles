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
  echo "Processor: $(lscpu | awk -F: '/Model name/ {print $2}' | xargs)"
  echo "Memory: $(free -g | awk '/^Mem:/ {print $2 " GB"}')"
  echo "Disk Usage: $(df -h / | awk 'NR==2 {printf "Size: %s, Free: %s, Used: %s", $2, $4, $5}')"
  echo "Primary Local IP: $(hostname -I | awk '{print $1}')"
}



#ssh
alias ssha='eval $(ssh-agent) && ssh-add'

#git aliases
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gpl='git pull'
alias gps='git push'
alias gplr='git pull --rebase'


#tailscale
alias tsinstall='curl -fsSL https://tailscale.com/install.sh | sh'
alias ts='tailscale'
alias tsup='sudo tailscale up'
alias tsdown='sudo tailscale down'
alias tsenset='sudo tailscale set --exit-node=100.89.118.43'
alias tsenup='sudo tailscale set --exit-node=100.89.118.43 --exit-node-allow-lan-access=true'
alias tsstatus='tailscale status'
alias tsendown='sudo tailscale set --exit-node='
alias tsupdate='sudo tailscale update'

#ssh 
alias spve='ssh 192.168.0.157'
alias spve1='ssh 192.168.0.23'
alias smedia='ssh 192.168.0.102'



#docker compose
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs -f'
alias dce='docker compose exec'
alias dcr='docker compose restart'
alias dcpull='docker compose pull'


#nixos
alias nxswitch='sudo nixos-rebuild switch --flake .#nixos'
alias nxbuild='sudo nixos-rebuild build --flake .#nixos'
alias nxupgrade='sudo nixos-rebuild switch --upgrade --flake .#nixos'
alias nxclean='sudo nix-collect-garbage -d'


