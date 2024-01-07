# Run some programs
eval $(keychain --eval --quiet --confhost --agents ssh id_rsa_github id_rsa_gitlab)

# Some PATH stuff
export PATH=~/.local/bin:$PATH
export PATH=~/.config/emacs/bin:$PATH
export PATH=~/repos/qemu/bin:$PATH
export PATH=~/repos/Discord:$PATH
export PATH=~/repos/clion-2023\.\2\.\2/bin:$PATH

# Environment Varibles
export EDITOR=nvim

# By default, if output of program doesn't
# end with a '\n' denoting an end-of-line.
# Zsh will put it to next line and indicate
# it did with a highlighted '%'
PROMPT_EOL_MARK=''

# Show git branch stuff -----------------
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch') '
  fi
}
autoload -U colors && colors
# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%F{yellow}%n%f %F{magenta}%~%f %F{green}$(git_branch_name)%f%F{yellow}>%f '

# Show git branch stuff end -------------

# Enable colors and change prompt:
#autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
if [[ ${KEYMAP} == vicmd ]] ||
    [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
elif [[ ${KEYMAP} == main ]] ||
    [[ ${KEYMAP} == viins ]] ||
    [[ ${KEYMAP} = '' ]] ||
    [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
fi
}
zle -N zle-keymap-select
zle-line-init() {
zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# My Alias'
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -hNa --color=auto --group-directories-first"
alias vim="nvim"
alias lf="lfub"
alias cat="bat"

# LS Colors
LS_COLORS="$LS_COLORS:di=01;34"


# Sources
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Load zsh-syntax-highlighting [SHOULD BE LAST!!]
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
