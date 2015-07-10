#!/bin/bash
file=${1-mimesis}
mkdir -p .mimesis
tar -xvf "$file" .mimesis &> /dev/null
play -q .mimesis/audio.aiff &> /dev/null &
ttyplay .mimesis/rec
pkill -P $$
rm -rf .mimesis

