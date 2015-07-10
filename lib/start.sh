#!/bin/bash
file=${1-mimesis}

# Make a temp directory and direct audio and terminal recording to it.
mkdir -p .mimesis
rec .mimesis/audio.aiff &> /dev/null &
ttyrec .mimesis/rec

# End audio recording once the terminal session has ended.
pkill -P $$

# Create a tarball from the component files and tell the user.
tar -cvf "$file" .mimesis &> /dev/null
rm -rf .mimesis
echo "Session recorded to $file."

