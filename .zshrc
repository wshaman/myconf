# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rakoth/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH=$PATH:~/bin
alias ls="ls -F --color=auto"
alias bc="bc -l"
## Установка нормального поведения клавиш Delete, Home, End и т.д.:
case $TERM in
        linux)
bindkey "^[[2~" yank
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[e" expand-cmd-path ## C-e for expanding path of typed command
bindkey "^[[A" up-line-or-search ## up arrow for back-history-search
bindkey "^[[B" down-line-or-search ## down arrow for fwd-history-search
bindkey " " magic-space ## do history expansion on space
;;
*xterm*|rxvt|(dt|k|E)term)
bindkey "^[[2~" yank
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[e" expand-cmd-path ## C-e for expanding path of typed command
bindkey "^[[A" up-line-or-search ## up arrow for back-history-search
bindkey "^[[B" down-line-or-search ## down arrow for fwd-history-search
bindkey " " magic-space ## do history expansion on space
;;
esac
# Примечание: если, скажем, в KDE для konsole
# выбрать тип Linux console, необходимости
# во второй секции нет.

# Use hard limits, except for a smaller stack and no core dumps
unlimit
limit stack 8192
limit core 0
limit -s

# Установка атрибутов доступа для вновь создаваемых файлов
umask 022

# Исправление поведения less - для ликвидации лишних Esc
# и прочего безобразия при  выводе man-страниц.
# Насколько мне известно, нужно только в некоторых дистрибутивах
export LESS="-R"
#Разукрасим!
autoload promptinit
promptinit
prompt adam2

#Нефига цд постоянно писать
setopt autocd

#Праверак арфагарфии
setopt CORRECT_ALL
