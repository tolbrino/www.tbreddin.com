#!/bin/bash

HUGO_FILENAME="hugo_${HUGO_RELEASE}_linux_amd64"
HUGO_TARFILE="${HUGO_FILENAME}.tar.gz"

mkdir -p .bin
cd .bin/
wget https://github.com/spf13/hugo/releases/download/v$HUGO_RELEASE/$HUGO_TARFILE
tar xfz $HUGO_TARFILE
mv $HUGO_FILENAME/$HUGO_FILENAME ./hugo
rm -rf $HUGO_FILENAME
