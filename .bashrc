# ~/.bashrc: executed by bash(1) for non-login shells.
alias fin="find ./ -name"
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

#Now
alias cdg='ls -al'

#ALIAS
# for scropt
alias myscrot='scrot ~/Pictures/Screenshots/%b%d::%H%M%S.png'
alias mic="pactl list | sed -n '/^Source/,/^$/p' | grep Mute"
alias sou="amixer -D pulse get Master | awk -F\"[][]\" '/Left:/ { print $2 }'"

# for relative path with ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# deploy website
alias mongoDep='mongosh "mongodb+srv://cluster0.7szhj0r.mongodb.net/" --apiVersion 1 --username sahith'
alias noi="noisetorch -s alsa_input.pci-0000_06_00.6.analog-stereo -i -o && exit"
alias no="noisetorch -s alsa_input.pci-0000_06_00.6.analog-stereo -i -o"

# General
alias vb="v ~/.bashrc"
alias sb="source ~/.bashrc"
alias tm="tmux"
alias v="nvim"
alias sahith="nvim"
alias e="expr"
alias re="reboot"
alias r="rm"
alias ec="echo"
alias m="mkdir"
alias shut="shutdown now"
alias shutdownNow.="shutdown now"
alias reginaAndAchitBye="shutdown now"
alias sus="systemctl suspend"
alias rd="rm -rf"
# alias clr="cl && "
alias t="touch"
# alias o="touch"
# alias i="touch"
alias cl="clear && ls"
alias cls="clear && neofetch && ls"
alias x="exit"
alias q="exit"
alias sahithExit="exit"

# git commands
alias g="git"
alias ga="git add"
alias gi="git init"
alias gc="git commit -m"
alias gb="git branch"
alias gr="git remote add origin"
alias gp="git push"
alias gpp="git push origin main"
alias gcl="git clone"
alias gsw="git switch"
alias gs="git status"
alias gre="git restore"
alias greset="git reset"
alias grem="git remote -v"

# for directories
# general bn = b(n-a) && ba where n > a

alias b="cd .."
alias b2="b && b"
alias b3="b2 && b"
alias b4="b3 && b"
alias b5="b4 && b"
alias b6="b5 && b"
alias b7="b6 && b" o
alias b8="b7 && b"
alias b9="b8 && b"
alias c="cd"

# back a few directories and do something else
alias ba="cd .. &&"
alias b2a="b && b &&"
alias b3a="b2 && b &&"
alias b4a="b3 && b &&"
alias b5a="b4 && b &&"
alias b6a="b5 && b &&"
alias b7a="b6 && b &&"
alias b8a="b7 && b &&"
alias b9a="b8 && b &&"
alias ca="cd &&"

# sudo
alias sai="sudo apt install"
alias sni="sudo snap install"
alias sau="sudo apt update"
alias sag="sudo apt upgrade"
alias sdi="sudo dpkg -i"
alias sar="sudo apt remove"
alias s="sudo"
alias sar="sudo apt remove"
alias saug="sudo apt update && sudo apt upgrade -y"

# dpkg broken dependencies
# sudo apt --fix-broken install ./docker-desktop-4.10.1-amd64.deb (command to fix the broken dependencies)
alias sdi="sudo dpkg -i"

# for javascript framworks and libraries
alias nd="npm run dev"
alias ns="npm run start"
alias nt="npm run tailwind"

# starting xampp
alias lam="sudo /opt/lampp/lampp start"

# for hollywood
alias sahithTheHacker="hollywood"

# run python django
alias pmr="python manage.py runserver"
alias pm="python manage.py"
alias pmp="django-admin startproject"
alias pma="django-admin startapp"
alias pmmm="python manager.py makemigrations"
alias pmm="python manage.py migrate"

# open config
alias vn="cd ~/.config/nvim && ranger"                                    # nvim config
alias vp="cd ~/.config/ && v picom.conf"                                  # nvim config
alias vtm="cd ~/ && v .tmux.conf"                                         # nvim config
alias vc="cd ~/.config/Code/User && ranger"                               # nvim config
alias vv="v ~/.vimrc"                                                     # nvim config
alias vlf="cd ~/.config/lf && ranger" i                                   # lf terminal manager config
alias vra="cd ~/.config/ranger && ranger"                                 # ranger terminal manger config
alias vss="cd ~/.config/synth-shell && ranger"                            # open synth-shell config
alias va="cd ~/.config/awesome && v rc.lua"                               # open awesome config
alias vz="cd ~/.config/zathura/ && v zathurarc"                           # open awesome config
alias vsc="cd ~/others/school/class11/textBookPdf && ranger"              # open schoool config
alias vsc11="cd ~/others/school/class11 && ranger"                        # open schoool config
alias vsc12="cd ~/others/school/class12 && ranger"                        # open schoool config
alias vsciro="cd ~/others/school/class11/textBookPdf/physicsTB && ranger" # open schoool config
alias vschcv="cd ~/others/school/class12/ && ranger"                      # open schoool config

#terminal file manager
alias f="lf"      #open lf terminal manager
alias ra="ranger" #open ranger terminal manager
alias a="ranger"  # operm ranger

# neofetch
alias nf="clear && neofetch && ls"
alias nfa="cd ~ && clear && neofetch && ls"

alias p="w3m"
alias pa="pavucontrol"

# set vim
set -o vi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrited it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		# We have color support; assume it's compliant with Ecma-48
		# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
		# a case would tend to support setf rather than setaf.)
		color_prompt=yes
	else
		color_prompt=
	fi
fi

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm* | rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
*) ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/sahith/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$(echo $- | grep i)" ]; then
	source /home/sahith/.config/synth-shell/synth-shell-prompt.sh
fi

#This is only for me
# 				FOR ADDING ANY SHORTCUT #eg alias t="touch" #vim ~/.bashrc
# alias t="touch"
# vim ~/.bashrc change to require shortcut
# source ~/.bashrc

# 				HOW TO  REMOVE ANY SHORCUT eg : unalias t

# unalias t
# vim ~/.bashrc and remove the shortcut
# source ~/.bashrc

bind '"\C-H": backward-kill-word'

# Get the width of the terminal

# echo "                                                                                                                         I use arch by the way "

clear
neofetch --ascii_distro Venom
ls

if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

# if ! command -v tmux &>/dev/null; then
# 	echo "tmux is not installed. Please install it first."
# 	exit 1
# fi

# if [ -z "$(pgrep -f tmux)" ]; then
# 	# tmux is not running, start it
# 	tmux
# else
# 	# tmux is already running
# 	echo ""
# fi
#
# if [ -z "$(pgrep -f htop)" ]; then
# 	# tmux is not running, start it
# 	# tmux
# 	htop
# else
# 	# tmux is already running
# 	echo ""
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
