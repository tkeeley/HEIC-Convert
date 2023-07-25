#!/bin/bash
counter=1
find . -iname "*.heic" -print0 | while IFS= read -r -d '' file; do
    new_name="$(printf "%04d.png" "$counter")"
    sips -s format png "$file" --out "${new_name}"
    ((counter++))
done
