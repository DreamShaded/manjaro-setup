import os
import shutil  # шутил, кек))0)

# Определяем список исключаемых файлов и папок
excluded = [".git", ".gitignore", "install.py", "README.md", ".vscode", "excluded", ".gitmodules"]

# Определяем папку, в которую будем копировать файлы
destination_folder = os.path.expanduser("~")

# Перебираем все файлы и папки в текущей директории
for entry in os.scandir("."):
    # Исключаем файлы и директории, перечисленные в списке excluded
    if entry.name in excluded:
        print(entry.name, " skipped")
        continue

    if entry.is_file():
        # Копируем файл с заменой
        shutil.copy2(entry.path, os.path.join(destination_folder, entry.name))
        print(entry.name, " file successfully copied")

    elif entry.is_dir():
        # Копируем папку со всем ее содержимым с заменой
        shutil.copytree(
            entry.path, os.path.join(destination_folder, entry.name), dirs_exist_ok=True
        )
        print(entry.name, " dir successfully copied")

    else:
        print("WTF maaaan")
