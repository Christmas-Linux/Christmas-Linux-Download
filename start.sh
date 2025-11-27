#!/bin/bash
# Christmas Linux Launcher

# Цвета
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
RESET='\033[0m'

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

check_dependencies() {
    if ! command -v proot >/dev/null 2>&1; then
        echo -e "${RED}[!] Установка PROOT...${RESET}"
        pkg install -y proot
    fi
}

check_linux() {
    if [ ! -f "bin/sh" ]; then
        echo -e "${RED}[!] Ошибка: Файловая система Linux не найдена!${RESET}"
        echo -e "${YELLOW}[*] Убедитесь, что вы находитесь в папке christmas_linux${RESET}"
        exit 1
    fi
}

start_linux() {
    echo -e "${CYAN}[*] Запуск Christmas Linux...${RESET}"
    echo -e "${YELLOW}[!] Используйте 'christmas-help' для справки${RESET}"
    echo ""
    
    # Запускаем Christmas Linux
    proot -S . /bin/sh
}

main() {
    show_logo
    check_dependencies
    check_linux
    start_linux
}

main "$@"
