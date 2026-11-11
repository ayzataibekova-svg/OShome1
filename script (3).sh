#!/bin/bash
if [ "$#" ne 1]; then
echo "Usage: /backup.sh <file>"
exit 1
fi

src=$1
if [ ! -e "$src" ]; then
echo "Not found: $src"
exit 2
fi
if [ -d "$src" ]; then
echo "$src is a directory, not a file"
exit 3
fi

if [ ! -r "$src" ]; then echo "Cannot read: $src"
exit 4
fi

today=$(date +%F) dest="${src}.${today}.bak"
cp -- "$src" "$dest" || exit 1
size=$(wc -c < "$dest")
echo "Backup created:" echo "$dest ($size bytes)"