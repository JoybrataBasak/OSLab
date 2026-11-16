read -p "Enter the word : " word
read -p "Enter the filename : " filename

echo "The number of lines containing "$word" is : "$(grep -c "$word" "$filename")" "