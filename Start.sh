#!/bin/bash
# Christmas Linux - Main Launcher

# Цвета
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Логотип Christmas Linux
show_logo() {
    clear
    echo -e "${GREEN}"
    echo "   ██████╗██╗  ██╗██████╗ ██╗███████╗███╗   ███╗ █████╗ ███████╗"
    echo "  ██╔════╝██║  ██║██╔══██╗██║██╔════╝████╗ ████║██╔══██╗██╔════╝"
    echo "  ██║     ███████║██████╔╝██║███████╗██╔████╔██║███████║███████╗"
    echo "  ██║     ██╔══██║██╔══██╗██║╚════██║██║╚██╔╝██║██╔══██║╚════██║"
    echo "  ╚██████╗██║  ██║██║  ██║██║███████║██║ ╚═╝ ██║██║  ██║███████║"
    echo "   ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝"
    echo -e "${RED}"
    echo "                    Christmas Linux v1.0"
    echo -e "${YELLOW}             Твой собственный дистрибутив${RESET}"
    echo ""
}

# Проверка зависимостей
check_dependencies() {
    if ! command -v proot >/dev/null 2>&1; then
        echo -e "${RED}[!] Установка PROOT...${RESET}"
        pkg install -y proot
    fi
}

# Проверка существования Linux
check_linux_exists() {
    if [ ! -d "christmas_linux" ]; then
        echo -e "${RED}[!] Christmas Linux не установлен!${RESET}"
        echo -e "${YELLOW}[*] Запустите установщик: python install_christmas_linux.py${RESET}"
        exit 1
    fi
}

# Запуск Linux
start_linux() {
    echo -e "${CYAN}[*] Запуск Christmas Linux...${RESET}"
    echo -e "${YELLOW}[!] Используйте 'christmas-help' для справки${RESET}"
    echo ""
    
    # Запускаем Christmas Linux
    proot -S christmas_linux /bin/bash
}

# Основная функция
main() {
    show_logo
    check_dependencies
    check_linux_exists
    start_linux
}

main "$@"
