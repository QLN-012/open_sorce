expr "$1" + "$2"
expr "$1" - "$2"
expr "$1" \* "$2"
if [ "$2" -eq 0 ]; then
    echo "error"
else
    expr "$1" / "$2"
fi
