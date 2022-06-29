#!/bin/bash
find /etc -type d -print0 | while read -d $'\0' file
do
    echo "$file" >> etc_dir.txt
done
