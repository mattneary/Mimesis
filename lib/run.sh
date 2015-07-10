#!/bin/bash
file=${1-mimesis}

# Read in the component files from tarball to a temp folder.
mkdir -p .mimesis
tar -xvf "$file" .mimesis &> /dev/null

# Play back the terminal and audio recordings.
play -q .mimesis/audio.aiff &> /dev/null &
ttyplay .mimesis/rec

# Kill the audio playback once the terminal session has ended.
pkill -P $$

# Clean up the recordings data file.
rm -rf .mimesis

