find . -iname "*.heic" -exec sh -c 'sips -s format png "$0" --out "${0%.heic}.png"' {} \;
