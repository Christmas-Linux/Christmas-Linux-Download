# Christmas Linux - Bash Configuration

# Промпт
export PS1='\[\033[1;32m\]Christmas-Linux \[\033[1;34m\]\w \[\033[1;37m\]> \[\033[0m\]'
export TERM=xterm-256color

# Пакетные менеджеры
export DEBIAN_FRONTEND=noninteractive

# Алиасы
alias ll='ls -la --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias cls='clear'
alias update='apk update && apk upgrade'
alias install='apk add'
alias remove='apk del'

# Christmas команды
alias christmas-help='/usr/local/bin/christmas-help'
alias christmas-pkg='/usr/local/bin/christmas-pkg'
alias christmas-info='/usr/local/bin/christmas-info'
alias christmas-update='/usr/local/bin/christmas-update'

# Приветствие
echo -e "\033[1;36m"
echo "    ================================"
echo "          CHRISTMAS LINUX"
echo "    ================================"
echo -e "\033[1;33m"
echo "  Собственный дистрибутив Linux"
echo "  На базе Alpine Linux"
echo -e "\033[0m"
echo "Команды:"
echo -e "  \033[1;32mchristmas-help\033[0m    - Справка"
echo -e "  \033[1;32mchristmas-pkg\033[0m     - Управление пакетами"
echo -e "  \033[1;32mchristmas-info\033[0m    - Информация о системе"
echo -e "  \033[1;32mchristmas-update\033[0m  - Обновление системы"
echo ""
