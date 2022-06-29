## Robot dreams tutorial
Test repo

![robot_1](https://user-images.githubusercontent.com/102283348/173764878-ec2a7366-65b6-469f-bc0f-34e4bf41bd78.jpg)

### Lesson5

1.
`find "$(pwd -P)" -type f -perm -u=x > executable.txt`

Команда виконує рекурсивний пошук у вкладених папках.
Для нерекурсивного пошуку можемо додати -maxdepth 1
Конструкція $(pwd -P) - виводить абсолютний шлях до файлу
-perm -u=x - фільтр "файл має принаймні один доступ - виконання користувачем

(За цикл по завданню 1 я б отримав зауваження на екзамені LFCS)

2.
```
#!/bin/bash
find /etc -type d -print0 | while read -d $'\0' file
do
    echo "$file" >> etc_dir.txt
done
```
Для виконання завдання по циклам, можна використати наступну конструкцію.
По швидкодії вона оптимальна, так як в цикл не потрапляють звичайні файли (не директорії),
а вже самцикл виконує запис імен директорій у файл у нові рядки.

3.
Варіант 1
`ls -lhS`
-l     use a long listing format
-h     with -l, print sizes in human readable format (e.g., 1K 234M 2G)
-S     sort by file size

Варіант 2 (використовую)
`du -ah | sort -rh`
a - вивід всіх файлів а не тільки директорій
h - human readable format

Варіант 3. (улюблений)
`find . -type f -size +1M`
Улюблена команда find. Можна задати пошук файлів у вказаній директорії з розміром більше ніж.. Або пошук директорій...

