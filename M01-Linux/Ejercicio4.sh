#!/bin/bash
PALABRA="Que me gusta la bash!!!!"

if [[ $# > 0 ]]; then
  echo "Hay argumentos"
  PALABRA="$1"
fi

curl -s http://metaphorpsum.com > fichero.html
grep $PALABRA ./fichero.html -n 