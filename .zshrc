#  _____    _
# |__  /___| |__  _ __ ___
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__
# /____|___/_| |_|_|  \___|

# Show OS info when opening a new terminal
# neofetch

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(go_version background_jobs rbenv)

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Last command successful

# ✔  %F{red} ✘ 

# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=$'╰─ '

#   
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=$'%F{cyan}%K{white}  %f%F{red} %f%F{black} %f%k\e[97;48;5;48m'

# # Separators
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR_ICON=$'\ue0b0'
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0b1'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR_ICON=$'\ue0b2'
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0b7'

# # Dir colours
# POWERLEVEL9K_DIR_HOME_BACKGROUND='white'
# POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_SHORTEN_LENGTH=5
# POWERLEVEL9K_DIR_SHORTEN_STRATEGY="truncate_from_right"

# # OS segment
# POWERLEVEL9K_OS_ICON_BACKGROUND='black'
# POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{white} arch %F{cyan}linux%f'

# # VCS icons
# POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2 '
# POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
# POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
# POWERLEVEL9K_VCS_BRANCH_ICON=$''
# POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
# POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
# POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# # VCS colours
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='blue'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'

# # VCS CONFIG
# POWERLEVEL9K_VCS_SHOW_CHANGESET=false

# Status
POWERLEVEL9K_STATUS_OK_BACKGROUND='white'
POWERLEVEL9K_STATUS_OK_FOREGROUND='green'
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_STATUS_OK_ICON=$'\uf164'
POWERLEVEL9K_STATUS_ERROR_ICON=$'\uf165'
POWERLEVEL9K_STATUS_ERROR_CR_ICON=$'\uf165'

# # Battery
# POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
# POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='blue'
# POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'
# POWERLEVEL9K_BATTERY_VERBOSE=true

# # Programming languages
# POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
# POWERLEVEL9K_GO_VERSION_PROMPT_ALWAYS_SHOW=true
# POWERLEVEL9K_NODE_VERSION_BACKGROUND='green'
# POWERLEVEL9K_NODE_VERSION_FOREGROUND='black'

# CustomP9K

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='lightgreen'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'


POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='springgreen1'

POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='green'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='lightcyan'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='grey50'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='grey50'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='grey50'
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=30
POWERLEVEL9K_BATTERY_HIDE_ABOVE_THRESHOLD='60'
POWERLEVEL9K_GO_VERSION_FOREGROUND='blue'

#POWERLEVEL9K_STATUS_OK='false'

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

plugins=(git
	gitfast
	golang
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-completions
	history-substring-search)

autoload -U compinit && compinit

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh


# User configuration
unsetopt beep
eval `dircolors ~/.dircolors/dircolors.256dark`
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")';
export MANPATH="/usr/local/man:$MANPATH"

# load functions 
if [ -f ~/.zsh_functions ]; then
	. ~/.zsh_functions
fi

# load aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

export DISPLAY=:0
export LIBGL_ALWAYS_INDIRECT=1

if [ $WSL_DISTRO_NAME = 'WLinux' ]; then
	export ZSH_THEME_TERM_TAB_TITLE_IDLE='PengWin/$WSL_DISTRO_NAME: %~'
else
	export ZSH_THEME_TERM_TAB_TITLE_IDLE='$WSL_DISTRO_NAME: %~'
fi

# bind keys so that CTRL+Delete/Backspace work in Windows Terminal 
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word
bindkey "^[" kill-whole-line
