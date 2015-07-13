#!/bin/bash
repo=$1
file=${2-mimesis}
hash=`echo "$repo" | grep -o "\/[a-z0-9]\+\$" | grep -o "[a-z0-9]\+"`
( git clone "git@gist.github.com:/$hash.git" .mimesis-gist &&
  cp .mimesis-gist/mimesis "$file" ) &> /dev/null
echo -e "Recording downloaded:\n"
cat .mimesis-gist/mimesis.txt
rm -rf .mimesis-gist
"${BASH_SOURCE%/*}/play.sh" "$file" 

