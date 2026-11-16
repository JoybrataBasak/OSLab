if [ -f "$1" ]; then
    echo "This is a file"
elif [ -d "$1" ]; then
    echo "This is a directory"
else 
    echo "This is neither a file nor a directory"
fi
