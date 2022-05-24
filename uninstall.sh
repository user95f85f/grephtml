#!/bin/bash


echo 'here we go!'
rm /usr/bin/grephtml.sh || {
    echo you gotta run this script as root or this project is 0 percent installed
    exit 1
}

rm -fr /usr/share/grephtml
