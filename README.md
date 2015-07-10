# Mimesis
Record terminal sessions, both screen activity and audio.

## Dependencies

```sh
$ brew install sox ttyrec
```

## Installation

Copy the contents of `/lib` to a folder like `~/bin` and add `lib/mimesis`
to your `$PATH`.

## Usage

```sh
$ mimesis record
$ # Interact with terminal...
$ exit
$ mimesis play
```
```sh
$ mimesis record my_session
$ exit
$ ls
my_session
$ mimesis play my_session
```

