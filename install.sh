#!/bin/bash

echo 'here we go!'

cp -v bin/grephtml bin/html-dir2txtdir.sh /usr/local/bin/ || {
  echo you gotta run this as root bro
  exit 1
}

chmod +x /usr/local/bin/grephtml /usr/local/bin/html-dir2txtdir.sh

cp -Rv share/grephtml /usr/local/share/
