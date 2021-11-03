#!/bin/bash

MENSAJE="Que me gusta la bash!!!!"

mkdir foo
mkdir ./foo/dummy foo/empty

if [[ $# > 0 ]]; then
  echo "Hay argumentos"
  MENSAJE="$1"
fi

echo $MENSAJE > ./foo/dummy/file1.txt
touch ./foo/dummy/file2.txt

cat ./foo/dummy/file1.txt >> ./foo/dummy/file2.txt
mv ./foo/dummy/file2.txt ./foo/empty/