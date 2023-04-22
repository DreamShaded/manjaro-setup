#!/bin/bash

# Устанавливаем имя файла для записи результатов установки
logfile="install_log.txt"

# Задаем массив репозиториев
repos=(
  "https://aur.archlinux.org/lib32-libstdc++5.git"
  "https://aur.archlinux.org/qt5-webkit.git"
  "https://aur.archlinux.org/davfs2.git"
  "https://aur.archlinux.org/thunar-nextcloud-plugin.git"
  "https://aur.archlinux.org/visual-studio-code-bin.git"
  "https://aur.archlinux.org/zeal.git"
  "https://aur.archlinux.org/anki.git"
  "https://aur.archlinux.org/google-chrome.git"
  "git@github.com:zsh-users/zsh-autosuggestions.git"
  "git@github.com:zsh-users/zsh-syntax-highlighting.git"
)

# если сломал нвидию https://aur.archlinux.org/linux-ck.git
# долго https://aur.archlinux.org/texlive-full.git

# Клонируем репозитории
for repo in "${repos[@]}"
do
  git clone "$repo"
done

# Собираем и устанавливаем пакеты из всех репозиториев
for dir in */
do
  cd "$dir"
  # Используем tee для записи результатов в файл
  makepkg -si --noconfirm | tee -a "$logfile"

  if [ $? -ne 0 ]; then
    echo "Установка пакета из $d требует прав суперпользователя"
    sudo makepkg -si --noconfirm | tee -a "$logfile"
  fi

  cd ..
done
