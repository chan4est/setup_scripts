# ALIASES
# CD
alias c="cd"
alias ccd="cd"
alias dc="cd"
alias cdd="cd"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../.."
alias ......="cd ../../../../../.."
# ZSH PROFILE
alias re="source ~/.zshrc"    # reload
alias rc="code ~/.zshrc" # rc, since this used to be a .bashrc
## VS Code
alias vscs="code ~/Library/ApplicationSupport/Code/User/settings.json" # VS code settings
# LS
alias l='ls -la'
# Directories
alias Desktop="cd ~/Desktop"
alias Projects="cd ~/Projects"
alias P="cd ~/Projects"

setopt PROMPT_SUBST
NEWLINE=$'\n'
FIRST_COLOR='cyan'
SECOND_COLOR='#8b8feb'
THIRD_COLOR='white'
FOURTH_COLOR='#818181'
FIFTH_COLOR='green'
PROMPT='🌊 %B%F{${FIRST_COLOR}}%n:%f%F{${SECOND_COLOR}}%~%f %F{${THIRD_COLOR}}$(parse_git_branch)%f %F{${FOURTH_COLOR}}%D{%a %b %d %I:%M %p}%f${NEWLINE}%F{${FIFTH_COLOR}}>>%f%b '
