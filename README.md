# Mimesis
Record terminal sessions, both screen activity and audio.

## Dependencies

```sh
$ brew tap homebrew/bundle
$ brew bundle
```

## Installation

Copy the contents of `/lib` to a folder like `~/bin` and add `lib/mimesis`
to your `$PATH`.

## Usage

```sh
$ mimesis record hello_world
$ # Interact with terminal...
$ exit
$ mimesis publish
Recording published:
https://gist.github.com/XXXX
$ mimesis download https://gist.github.com/XXXX demo
Recording downloaded:

Mimesis Recording
Title: hello_world
$ mimesis play demo
$ # Interaction and audio are played back
```

