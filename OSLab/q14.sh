while true; do
    echo "Enter the choice"
    echo "1. Copy 2. Remove 3. Rename 4. Link 5. Exit from menu"
    read choice

    if [ "$choice" -eq 1 ]; then
        read -p "Enter the source filename: " source
        read -p "Enter the dest filename: " dest

        cp "$source" "$dest"
    
    elif [ "$choice" -eq 2 ]; then
        read -p "Enter the filename: " filename
        rm "$filename"
    
    elif [ "$choice" -eq 3 ]; then
        read -p "Enter the old filename: " old
        read -p "Enter the new filename: " new

        mv "$old" "$new"

    elif [ "$choice" -eq 4 ]; then  
        read -p "Enter the target path: " target
        read -p "Enter the link path: " link

        ln -s "$target" "$link"

    elif [ "$choice" -eq 5 ]; then 
        echo "Exiting"
        break

    else 
        echo "Invalid input"
    fi
done

