#!/usr/bin/env sh

cd ~
URL=$1
FILENAME=${URL:8}
emacsclient -n $FILENAME
