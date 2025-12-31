# ~/.bashrc

# 1) Default (padrão) do prompt
# Opções: starship | custom-git-prompt | my-git-bash
PROMPT_MODE_DEFAULT="starship"

# Caminho para seu prompt customizado dogit
GIT_BASH_CUSTOM="$HOME/git-bash-custom.sh"

# Caminho para o prompt original do Git Bash
MY_GIT_BASH="$HOME/my-git-bash.sh"

# Usa PROMPT_MODE ou DEFAULT
PROMPT_MODE="${PROMPT_MODE:-$PROMPT_MODE_DEFAULT}"

case "$PROMPT_MODE" in

  starship)
    eval "$(starship init bash)"
    ;;

  git-bash-custom)
    if [ -f "$GIT_BASH_CUSTOM" ]; then
      source "$GIT_BASH_CUSTOM"
    fi
    ;;

  my-git-bash)
    if [ -f "$MY_GIT_BASH" ]; then
      source "$MY_GIT_BASH"
    fi
    ;;

  *)
    PS1='\u@\h:\w\$ '  # prompt simples caso algo dê errado
    ;;
esac

# (opcional) alias/funções
alias ll="ls -al"
