#!/bin/bash

# Устанавливаем имя файла для записи результатов установки
logfile="install_log.txt"

# Задаем массив репозиториев
repos=(
  "https://aur.archlinux.org/diodon.git"
  "https://aur.archlinux.org/google-chrome.git"
  "https://aur.archlinux.org/nekoray.git"
  "https://aur.archlinux.org/sing-geoip.git"
  "https://aur.archlinux.org/sing-geosite.git"
  "https://aur.archlinux.org/texlive-full.git"
  "https://aur.archlinux.org/vscodium.git"
  "https://aur.archlinux.org/xplugd-git.git"
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
