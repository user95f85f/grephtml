#!/bin/bash


echo 'here we go!'
rm -v /usr/local/bin/grephtml /usr/local/bin/html-dir2txtdir.sh || {
    echo you gotta run this script as root or this project is 0 percent installed
    exit 1
}

rm -v /usr/local/share/grephtml/html2text-specialized.pl
rmdir -v /usr/local/share/grephtml
