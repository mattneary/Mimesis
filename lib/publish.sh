#!/bin/bash
file=${1-mimesis}

if ! [ -e ~/.gist ]; then
  echo "You need to login to Github to publish."
  gist --login
fi
repo=`echo -e "Mimesis Recording\nTitle: $file" | gist -f mimesis.txt`
hash=`echo "$repo" | grep -o "\/[a-z0-9]\+\$" | grep -o "[a-z0-9]\+"`
( git clone "git@gist.github.com:/$hash.git" .mimesis-gist
  cp "$file" .mimesis-gist/mimesis
  cd .mimesis-gist &&
  git add mimesis &&
  git commit -m "Recording added" &&
  git push -u origin master &&
  cd .. ) &> /dev/null
rm -rf .mimesis-gist
echo -e "Recording published:\n$repo"

