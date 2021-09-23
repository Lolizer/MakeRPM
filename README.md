# MakeRPM
C program is built with Make and inserted into a custom rpm package.

Собранный RPM пакет - [RPM](https://github.com/Lolizer/MakeRPM/blob/master/RPMS/x86_64/). 

Исходный код C программы - [main.c](https://github.com/Lolizer/MakeRPM/blob/master/main.c).

Makefile - [Makefile](https://github.com/Lolizer/MakeRPM/blob/master/Makefile).  
Переменная DEST определяет будущее положение исполняемого файла в системе пользователя rpm пакета.

Файл spec - [Spec](https://github.com/Lolizer/MakeRPM/tree/master/SPECS).

Вспомогательные скрипты:  
mkrpmenv.sh - Инициализация каталога rpmbuild  
create_tar.sh - Подготовка ресурсной иерархии файлов в формате tar.gz.  
create_specs.sh - Генерирование файла спецификации для сборки rpm пакета.  

П.С. После установки rpm пакета, исполняемый файл можно вызвать из любой папки по статически заданному названию task. 
