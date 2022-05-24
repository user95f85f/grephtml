#!/bin/bash

die(){
  echo "ERROR: $1"
  exit 1
}

browser_could_use='less'
find_decent_browser(){
  if [ -f /usr/bin/lynx ]; then
    browser_could_use=lynx
  elif [ -f /usr/bin/links2 ]; then
    browser_could_use=links2
  elif [ -f /usr/bin/links ]; then
    browser_could_use=links
  elif [ -f /usr/bin/cygstart ]; then
    browser_could_use=cygstart
  elif [ -f /usr/bin/epiphany-browser ]; then
    browser_could_use=epiphany-browser
  elif [ -f /usr/bin/konqueror ]; then
    browser_could_use=konqueror
  elif [ -f /usr/bin/google-chrome ]; then
    browser_could_use=google-chrome
  elif [ -f /usr/bin/chromium ]; then
    browser_could_use=chromium
  elif [ -f /usr/bin/opera ]; then
    browser_could_use=opera
  elif [ -f /usr/bin/brave ]; then
    browser_could_use=brave
  elif [ -f /usr/bin/firefox ]; then
    browser_could_use=firefox
  fi
}

search_string="$1"
HTML_dir="$2"
[ -z "$search_string" -o -z "$HTML_dir" ] && die "grephtml.sh [egrep-search-string] [html-directory]"
[ -d "$HTML_dir" ] || die "directory '$HTML_dir' 0% exists."
echo "$HTML_dir" | egrep '^[a-zA-Z0-9_ \-]+$' >/dev/null || die "your html directory ($HTML_dir) needs to match /^[a-zA-Z0-9_\\- ]+\$/"
search_dir="${HTML_dir/html/txt}" #we search in the txt directory with grep
[ -d "$search_dir" ] || die "you need to run:  html-dir2txtdir.sh '$HTML_dir' for egrep to search in."
unset HTML_dir
txt_file_count="$(find "$search_dir" -type f -name '*.txt' | wc -l)"
[ -z "$txt_file_count" ] && die 'wtf1'
[ "$txt_file_count" -eq 0 ] && die "there are no .txt files in the directory '$search_dir'"
echo "found $txt_file_count TXT files in '$search_dir'"
egrep -R "$search_string" "$search_dir" | perl -e 'BEGIN{undef $/;} $_=<>;@s=split /\n/;foreach(@s){s/txt/html/;s/txt/html/;s/^/'$browser_could_use' /;} print(join("\n",@s));'
