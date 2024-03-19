if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias gu="gitui -t mocha.ron"
alias ls="lsd"
alias vim="nvim"
alias ansible-lint="ansible-lint -c ~/.ansible-lint.yml"
alias clip="/mnt/c/Windows/System32/clip.exe"

bindkey -s ^f "tmux-sessionizer\n"

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

# Docker
if [ $commands[docker] ]; then
  docker() {
      unfunction "$0"
      DOCKER_DISTRO="Ubuntu"
      DOCKER_LOG_DIR="$HOME/docker_logs"
      mkdir -pm o=,ug=rwx "$DOCKER_LOG_DIR"
      /mnt/c/Windows/System32/wsl.exe -d "$DOCKER_DISTRO" sh -c "nohup sudo -b dockerd < /dev/null > '$DOCKER_LOG_DIR/dockerd.log' 2>&1"
      sleep 1
      $0 "$@"
  }
fi

# SSH Agent
eval `ssh-agent -s` >/dev/null 2>&1
ssh-add >/dev/null 2>&1

# Ansible 
export ANSIBLE_FORCE_COLOR=True

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
