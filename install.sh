#!/bin/bash

echo 'here we go!'
chmod +x bin/grephtml bin/html-dir2txtdir.sh
cp bin/grephtml bin/html-dir2txtdir.sh /usr/bin/ || {
  echo you gotta run this as root bro
  exit 1
}

cp -R share/grephtml /usr/share/
