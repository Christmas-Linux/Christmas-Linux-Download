#!/bin/bash
# Christmas Linux Launcher

echo "==================================="
echo "       CHRISTMAS LINUX v1.0"
echo "==================================="
echo ""

# Проверка зависимостей
if ! command -v proot >/dev/null 2>&1; then
    echo "Установка PROOT..."
    pkg install -y proot
fi

# Проверка существования Linux
if [ ! -d "Christmas_Linux" ]; then
    echo "Ошибка: Christmas Linux не установлен!"
    echo "Запустите: python Installer.py"
    exit 1
fi

if [ ! -f "Christmas_Linux/bin/sh" ]; then
    echo "Ошибка: Файловая система повреждена!"
    exit 1
fi

echo "Запуск Christmas Linux..."
echo "Используйте 'Christmas-Help' для справки"
echo ""

# Запуск системы
proot -S Christmas_Linux /bin/sh
