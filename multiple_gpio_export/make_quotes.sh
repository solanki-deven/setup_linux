#!/bin/sh

while IFS='' read -r line ||  [ -n "$line" ]; do
    echo "Text read from file: $line"
    echo "\"$line\"">> $1_with_quotes
done < $1

