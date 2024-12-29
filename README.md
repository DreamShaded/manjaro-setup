# Настройка линухса

Набор конфигураций и сниппетов для чистой установки на Manjaro i3.
Включает в себя настройки гита, zsh (без скинов), конфиг для i3 и i3status,
плюс мои привычные алиасы для команд.

## Необходимые зависимости

1. [FZF](https://github.com/junegunn/fzf)
2. Python (обычно предустановлен)

## Установка:
1. Исправить имя и почту в .gitconfig
2. Выполнить ```python install.py```
3. pacman-add redshift kwallet kwallet-pam qterminal flameshot libpeas zeitgeist gobject-introspection meson vala xorg-server-xvfb libayatana-appindicator mplayer fzf xorg-xinput qbittorrent flatpak libpamac-flatpak-plugin blueman
4. Скачать [obsidian.Appimage](https://obsidian.md/download) в .local/bin/obsidian.AppImage
