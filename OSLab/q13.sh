read -p "Enter the word : " word

for file in "$@"; do
    grep -v "$word" "$file" > temp
    cp temp "$file"
done
rm temp
