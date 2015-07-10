#!/bin/bash
file=${1-mimesis}
mkdir -p .mimesis
rec .mimesis/audio.aiff &> /dev/null &
ttyrec .mimesis/rec
pkill -P $$

tar -cvf "$file" .mimesis &> /dev/null
rm -rf .mimesis
echo "Session recorded to $file."

