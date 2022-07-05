#!/bin/bash


echo 'here we go!'
rm -v /usr/bin/grephtml || {
    echo you gotta run this script as root or this project is 0 percent installed
    exit 1
}

rm -frv /usr/share/grephtml
