export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

function limpaTudo() {
  git checkout master
  git pull --quiet --rebase
  git branch | xargs git branch -D
  echo ":usando_óculos_escuros: Deu tudo certo"
  }