cat > mytable.txt

cat mytable.txt

cut -f 2 "my table.txt" > temp1 && cut -f 3 "my table.txt" > temp2
cut -f 1 "my table.txt" > temp3
paste temp3 temp2 temp1
paste temp3 temp2 temp1 > "my table.txt"
rm temp1 temp2 temp3