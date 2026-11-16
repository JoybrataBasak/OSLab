for file1 in *; do
    if [ -f "$file1" ]; then
        for file2 in *;do
            if [ -f "$file2" ]; then 
                if [ "$file1" != "$file2" ]; then
                    if cmp -s "$file1" "$file2"; then
                        rm "$file2"
                    fi
                fi
            fi
        done
    fi
done
    
