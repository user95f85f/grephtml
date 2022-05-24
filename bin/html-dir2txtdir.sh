#!/bin/bash

die(){
  echo "ERROR: $1"
  exit 1
}

create-txt-dir-infrastructure(){
  pushd "$html_dir"
  find -type d -exec mkdir -p "../$txtdir/{}" \;
  popd
}


html_dir="$1"
[ -z "$html_dir" ] && die 'html-dir2txtdir.sh [a_directory]'
echo "$html_dir" | grep html >/dev/null || die "your directory needs 'html' somewhere in its name"
echo "$html_dir" | egrep '^[a-zA-Z0-9_ \-]+$' >/dev/null || die 'the directory name needs to be /^[a-zA-Z0-9\-_ ]+$/'
[ -d "$html_dir" ] || die "'$html_dir' is not a directory."
html_file_count="$(find "$html_dir" -type f -name '*.html' | wc -l)"
[ -z "$html_file_count" ] && die 'wtf1'
[ "$html_file_count" -eq 0 ] && die 'there are no .html files in the directory'
echo "found $html_file_count HTML files in '$html_dir'"
txtdir="${html_dir/html/txt}"
[ -d "$txtdir" ] && die "'$txtdir' already exists."
mkdir "$txtdir"
create-txt-dir-infrastructure
unset txtdir

find "$html_dir" -type f -name '*.html' -exec perl /usr/share/grephtml/html2text-specialized.pl '{}' \;
