#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Illegal number of arguments found"
    echo "Usage: sha1verify sha1checksum filename"
    exit 1
fi

echo "$1 $2" | sha1sum --check --strict -

if [[ $? -ne 0 ]]
then
    echo "Are you in the directory of the file?"
fi
