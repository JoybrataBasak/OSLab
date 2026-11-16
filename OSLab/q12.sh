read -p "Enter filename : " filename
read -p "Start line no : " start
read -p "End line no : " end

count=$((end - start + 1))
head -n "$end" "$filename" | tail -n "$count"