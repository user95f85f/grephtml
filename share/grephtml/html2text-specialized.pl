#!/usr/bin/perl


use warnings;
use strict;

if($#ARGV != 0){ die 'html2text [html_filename_whatever.txt]';}
my $html_input_filename = $ARGV[0];
if($html_input_filename !~ /[a-zA-Z0-9_\- ]+\.html$/){ die "your HTML file ($html_input_filename) needs to match /[a-zA-Z0-9_\\- ]+\\.html\$/"; }
if( ! -f $html_input_filename){ die "'$html_input_filename' file does not exist"; }
my $all_html_file_content = '';
{
  undef $/; #slurp mode
  open(my ${htmlf}, "<$html_input_filename") or die $!;
  $all_html_file_content = <$htmlf>;
  close(${htmlf});
  $htmlf = undef; 
}

my $txt_output_filename = $html_input_filename;
$html_input_filename = undef;
$txt_output_filename =~ s/html/txt/ or die 'shit1';
$txt_output_filename =~ s/\.html$/.txt/ or die 'shit2';

my $output_txt_file_content = $all_html_file_content;
$all_html_file_content = undef;
$output_txt_file_content =~ s/<script.*?<\/script>//gs;
$output_txt_file_content =~ s/<style.*?<\/style>//gs;
$output_txt_file_content =~ s/<[^>]+>//gs;
$output_txt_file_content =~ s/\n{2,}/\n/gs;
$output_txt_file_content =~ s/&quot;/"/g;
$output_txt_file_content =~ s/&gt;/>/g;
$output_txt_file_content =~ s/&lt;/</g;
$output_txt_file_content =~ s/&amp;/&/g;
$output_txt_file_content =~ s/^\s+//mg;
open(my ${txtf}, ">$txt_output_filename") or die $!;
print ${txtf} $output_txt_file_content;
close(${txtf});

