if cmp -s "$1" "$2" ; then
    echo "These two files are the same"
    rm $2

else
    echo "These two files are different"
fi