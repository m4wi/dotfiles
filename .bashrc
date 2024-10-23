#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -lAh"
alias lt="ls --tree"
alias xjs="pnpm"
alias vi=nvim
alias cl="printf '\x1Bc'"
alias cat="cat -n "
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
#alias sudo="doas"

# Pacman snippets
alias inx="sudo pacman --noconfirm -S "


#cut_pdf() {   gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage="$1" -dLastPage="$2" -sOutputFile=cropped-"$3".pdf "$3"; }

PS1='\[\e[1;38;5;255m\] 󰊠 \[\e[0;1;2;3;38;5;255m\]\w \[\e[0m\]'

#eval "$(fnm env --use-on-cd)"

#nsxiv -s f -g 600x800-50-50
#alias view="nsxiv -s f -g 600x800-50-50"
# fnm
export PATH="/home/mawi/.local/share/fnm:$PATH"
#eval "`fnm env`"

trash() {
    mv "$@" "$HOME/.trash"
}


shopt -s autocd

export HISTSIZE=25
export HISTCONTROL=ignoredups
#set +o history
