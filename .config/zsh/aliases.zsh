# My aliases
# @justHaru

# Energy n stuff
alias sdh="sudo shutdown -h now"

## Builtins and Coreutils

# ls
alias ls="LC_ALL="C" ls --color=auto"
alias l="ls -lah"

# cp, mv, rm
alias cp="cp -iv"
alias rm="rm -i"
alias mv="mv -iv"

# grep
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# bc
alias bc="bc -q"

# ping
alias pg="ping 8.8.8.8"

# dirstack
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

## Other programs

# pacman
alias pac="sudo pacman --color=auto"
alias	pacin="pac -S"
alias	pacupg="pac -Sy"
alias	pacupd="pac -Syu"
alias pacclr="pac -Sc"
alias pacclrf="pac -Scc"
alias pacrm="pac -Rns"


## Some usefull and commonly used stuff

# X11
alias xpropc="xprop | grep 'WM_CLASS'"

# youtube_dl
alias yt="youtube-dl --add-metadata -i"
alias	yta="yt --audio-format opus -x"
alias	ytam="yta --exec 'mv {} /mnt/data/music/{}'"

# neovim
alias n="$EDITOR"
alias v="$EDITOR"
alias vim="$EDITOR"

# git
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git push origin'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias gr='git branch -r'                                                                           # display remote branch
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias gr='git remote'
alias grs='git remote show'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'
alias gclean="git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d" # Delete local branch merged with master
alias gblog="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"                                                              # git log for each branches
alias gsub="git submodule update --remote"

## Personal shortcuts

# Folders
alias fprj="$HOME/projects"
alias fsrc="$HOME/.local/src"
alias fweb="$HOME/projects/server"
