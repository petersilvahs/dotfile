export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

function limpaTudo() {
  git checkout master
  git pull --quiet --rebase
  git branch | xargs git branch -D
  echo ":usando_óculos_escuros: Deu tudo certo"
  }

    plugins=( 
	git
  zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-autosuggestions
	fzf
)

source /home/peter.santos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh